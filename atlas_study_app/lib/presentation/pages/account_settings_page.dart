import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/providers/auth_providers.dart';
import '../../core/models/auth.dart';

class AccountSettingsPage extends ConsumerStatefulWidget {
  const AccountSettingsPage({super.key});

  @override
  ConsumerState<AccountSettingsPage> createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends ConsumerState<AccountSettingsPage> {
  final _changeEmailFormKey = GlobalKey<FormState>();
  final _changePasswordFormKey = GlobalKey<FormState>();

  final _newEmailController = TextEditingController();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmNewPasswordController = TextEditingController();

  bool _obscureCurrentPassword = true;
  bool _obscureNewPassword = true;
  bool _obscureConfirmPassword = true;

  bool _isChangingEmail = false;
  bool _isChangingPassword = false;

  @override
  void dispose() {
    _newEmailController.dispose();
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmNewPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);

    return Scaffold(
      backgroundColor: AppTheme.primaryWhite,
      appBar: AppBar(
        title: const Text('Account'),
        backgroundColor: AppTheme.primaryWhite,
        foregroundColor: AppTheme.primaryBlack,
        elevation: 0,
      ),
      body: SafeArea(
        child: authState.when(
          data: (user) => user != null ? _buildContent(user) : _buildNotLoggedIn(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => _buildError(error.toString()),
        ),
      ),
    );
  }

  Widget _buildNotLoggedIn() => const Center(
        child: Text('Please log in to access account settings',
            style: TextStyle(fontSize: 16, color: AppTheme.darkGray)),
      );

  Widget _buildError(String error) => Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: AppTheme.darkGray),
              const SizedBox(height: 16),
              Text('Error loading account info',
                  style: AppTheme.lightTheme.textTheme.headlineSmall),
              const SizedBox(height: 8),
              Text(error,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: AppTheme.darkGray)),
            ],
          ),
        ),
      );

  Widget _buildContent(User user) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        // Account info
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Account Information',
                  style: AppTheme.lightTheme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              _buildInfoRow('Email', user.email),
              if (user.fullName != null) ...[
                const SizedBox(height: 8),
                _buildInfoRow('Full Name', user.fullName!),
              ],
              const SizedBox(height: 8),
              _buildInfoRow('Status', user.isActive ? 'Active' : 'Inactive'),
            ]),
          ),
        ),
        const SizedBox(height: 24),

        // Change email
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('Change Email',
                    style: AppTheme.lightTheme.textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold)),
                IconButton(
                    onPressed: () => setState(() => _isChangingEmail = !_isChangingEmail),
                    icon: Icon(_isChangingEmail ? Icons.close : Icons.edit))
              ]),
              if (_isChangingEmail) ...[
                const SizedBox(height: 16),
                Form(
                  key: _changeEmailFormKey,
                  child: Column(children: [
                    TextFormField(
                      controller: _newEmailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                          labelText: 'New Email',
                          hintText: 'Enter your new email',
                          prefixIcon: Icon(Icons.email_outlined)),
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Please enter your new email';
                        if (!value.contains('@')) return 'Please enter a valid email';
                        if (value == user.email) return 'This is your current email';
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(onPressed: _handleChangeEmail, child: const Text('Update Email')),
                  ]),
                )
              ]
            ]),
          ),
        ),
        const SizedBox(height: 24),

        // Change password
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('Change Password',
                    style: AppTheme.lightTheme.textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold)),
                IconButton(
                    onPressed: () => setState(() => _isChangingPassword = !_isChangingPassword),
                    icon: Icon(_isChangingPassword ? Icons.close : Icons.edit))
              ]),
              if (_isChangingPassword) ...[
                const SizedBox(height: 16),
                Form(
                  key: _changePasswordFormKey,
                  child: Column(children: [
                    TextFormField(
                      controller: _currentPasswordController,
                      obscureText: _obscureCurrentPassword,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Current Password',
                        hintText: 'Enter your current password',
                        prefixIcon: const Icon(Icons.lock_outlined),
                        suffixIcon: IconButton(
                          icon: Icon(_obscureCurrentPassword ? Icons.visibility : Icons.visibility_off),
                          onPressed: () => setState(() => _obscureCurrentPassword = !_obscureCurrentPassword),
                        ),
                      ),
                      validator: (value) => (value == null || value.isEmpty)
                          ? 'Please enter your current password'
                          : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _newPasswordController,
                      obscureText: _obscureNewPassword,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'New Password',
                        hintText: 'Enter your new password',
                        prefixIcon: const Icon(Icons.lock_outlined),
                        suffixIcon: IconButton(
                          icon: Icon(_obscureNewPassword ? Icons.visibility : Icons.visibility_off),
                          onPressed: () => setState(() => _obscureNewPassword = !_obscureNewPassword),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Please enter your new password';
                        if (value.length < 8) return 'Password must be at least 8 characters';
                        if (!value.contains(RegExp(r'[A-Z]'))) return 'Password must contain at least 1 uppercase letter';
                        if (!value.contains(RegExp(r'[0-9]'))) return 'Password must contain at least 1 number';
                        if (!value.contains(RegExp(r'[!@#\$%\^&*(),.?":{}|<>]'))) return 'Password must contain at least 1 special character';
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _confirmNewPasswordController,
                      obscureText: _obscureConfirmPassword,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) => _handleChangePassword(),
                      decoration: InputDecoration(
                        labelText: 'Confirm New Password',
                        hintText: 'Confirm your new password',
                        prefixIcon: const Icon(Icons.lock_outlined),
                        suffixIcon: IconButton(
                          icon: Icon(_obscureConfirmPassword ? Icons.visibility : Icons.visibility_off),
                          onPressed: () => setState(() => _obscureConfirmPassword = !_obscureConfirmPassword),
                        ),
                      ),
                      validator: (value) => (value == null || value.isEmpty)
                          ? 'Please confirm your new password'
                          : (value != _newPasswordController.text)
                              ? 'Passwords do not match'
                              : null,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(onPressed: _handleChangePassword, child: const Text('Update Password')),
                  ]),
                )
              ]
            ]),
          ),
        ),
      ]),
    );
  }

  Widget _buildInfoRow(String label, String value) => Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          width: 100,
          child: Text('$label:',
              style: const TextStyle(fontWeight: FontWeight.w500, color: AppTheme.darkGray)),
        ),
        Expanded(child: Text(value, style: const TextStyle(color: AppTheme.primaryBlack))),
      ]);

  Future<void> _handleChangeEmail() async {
    if (_changeEmailFormKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Email change feature coming soon!'), backgroundColor: Colors.orange));
    }
  }

  Future<void> _handleChangePassword() async {
    if (_changePasswordFormKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Password change feature coming soon!'), backgroundColor: Colors.orange));
    }
  }
}


