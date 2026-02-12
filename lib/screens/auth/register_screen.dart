import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/auth_provider.dart';
import '../../providers/service_providers.dart';
import '../../widgets/common/custom_button.dart';
import '../../widgets/common/custom_textfield.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nickNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _verificationCodeController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _isTermsAgreed = false;
  bool _isNicknameChecked = false;
  bool _isEmailVerified = false;
  bool _isCodeSent = false;
  String? _nicknameCheckError;

  @override
  void dispose() {
    _nickNameController.dispose();
    _emailController.dispose();
    _verificationCodeController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _handleRegister() async {
    if (!_formKey.currentState!.validate()) return;

    if (!_isTermsAgreed) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("'나만의 서재' 서비스 이용약관에 동의하지 않은 경우 서비스를 사용하실 수 없습니다"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final nickName = _nickNameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    try {
      await ref
          .read(authNotifierProvider.notifier)
          .signUp(
            nickName: nickName,
            email: email,
            password: password,
            isTermsAgreed: _isTermsAgreed,
          );

      if (mounted) {
        final authState = ref.read(authNotifierProvider);
        if (authState.hasValue && authState.value != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('회원가입이 완료되었습니다!'),
              backgroundColor: Colors.green,
            ),
          );
          context.go('/home');
        } else if (authState.hasError) {
          final errorMessage = authState.error.toString().replaceFirst(
            'Exception: ',
            '',
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(errorMessage), backgroundColor: Colors.red),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        final errorMessage = e.toString().replaceFirst('Exception: ', '');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage), backgroundColor: Colors.red),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final isLoading = authState.isLoading;

    return Scaffold(
      appBar: AppBar(title: const Text('회원가입')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '새 계정 만들기',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '정보를 입력하여 계정을 생성하세요',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 32),
                CustomTextField(
                  controller: _nickNameController,
                  label: '닉네임',
                  hint: '사용할 닉네임을 입력하세요',
                  helperText: '영어 소문자, 숫자, _ 만 사용 가능',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '닉네임을 입력해주세요';
                    }
                    if (value.length < 2) {
                      return '닉네임은 2자 이상이어야 합니다';
                    }
                    if (!_isNicknameChecked) {
                      return '닉네임 중복 확인이 필요합니다';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    if (_isNicknameChecked) {
                      setState(() {
                        _isNicknameChecked = false;
                      });
                    }
                  },
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IntrinsicWidth(
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () async {
                            final nickname = _nickNameController.text.trim();
                            if (nickname.isEmpty || nickname.length < 2) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('유효한 닉네임을 입력해주세요'),
                                  backgroundColor: Colors.orange,
                                ),
                              );
                              return;
                            }

                            try {
                              final result = await ref
                                  .read(authServiceProvider)
                                  .checkNickname(nickname);

                              if (mounted) {
                                setState(() {
                                  _isNicknameChecked = result.isAvailable;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(result.message),
                                    backgroundColor: result.isAvailable
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                );
                              }
                            } catch (e) {
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('중복 확인 중 오류 발생: $e'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text('중복 확인'),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: _emailController,
                  label: '이메일',
                  hint: 'example@email.com',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '이메일을 입력해주세요';
                    }
                    if (!value.contains('@')) {
                      return '올바른 이메일 형식이 아닙니다';
                    }
                    return null;
                  },
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IntrinsicWidth(
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () async {
                            final email = _emailController.text.trim();
                            if (email.isEmpty || !email.contains('@')) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('유효한 이메일을 입력해주세요'),
                                  backgroundColor: Colors.orange,
                                ),
                              );
                              return;
                            }

                            try {
                              await ref
                                  .read(authServiceProvider)
                                  .sendVerificationEmail(email);

                              if (context.mounted) {
                                setState(() {
                                  _isCodeSent = true;
                                  _isEmailVerified = false;
                                  _verificationCodeController.clear();
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('인증 메일이 발송되었습니다'),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              }
                            } catch (e) {
                              if (context.mounted) {
                                final message = e.toString().replaceFirst(
                                  'Exception: ',
                                  '',
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(message),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text('인증 요청'),
                        ),
                      ),
                    ),
                  ),
                ),
                if (_isCodeSent) ...[
                  const SizedBox(height: 16),
                  CustomTextField(
                    controller: _verificationCodeController,
                    label: '인증 코드',
                    hint: '이메일로 받은 인증 코드를 입력하세요',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (!_isEmailVerified) {
                        return '이메일 인증이 필요합니다';
                      }
                      return null;
                    },
                    suffixIcon: _isEmailVerified
                        ? const Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: IntrinsicWidth(
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    final code = _verificationCodeController
                                        .text
                                        .trim();
                                    if (code.isEmpty) {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        const SnackBar(
                                          content: Text('인증 코드를 입력해주세요'),
                                          backgroundColor: Colors.orange,
                                        ),
                                      );
                                      return;
                                    }

                                    try {
                                      final isValid = await ref
                                          .read(authServiceProvider)
                                          .verifyEmailCode(
                                            _emailController.text.trim(),
                                            code,
                                          );

                                      if (context.mounted) {
                                        if (isValid) {
                                          setState(
                                            () => _isEmailVerified = true,
                                          );
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            const SnackBar(
                                              content: Text('이메일 인증이 완료되었습니다'),
                                              backgroundColor: Colors.green,
                                            ),
                                          );
                                        } else {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                '인증번호가 유효하지 않거나 만료되었습니다',
                                              ),
                                              backgroundColor: Colors.red,
                                            ),
                                          );
                                        }
                                      }
                                    } catch (e) {
                                      if (context.mounted) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text('인증 확인 실패: $e'),
                                            backgroundColor: Colors.red,
                                          ),
                                        );
                                      }
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: const Text('확인'),
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
                const SizedBox(height: 16),
                CustomTextField(
                  controller: _passwordController,
                  label: '비밀번호',
                  obscureText: _obscurePassword,
                  helperText: '10~30자, 대소문자, 숫자, 특수문자 포함',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '비밀번호를 입력해주세요';
                    }
                    if (value.length < 10) {
                      return '비밀번호는 10자 이상이어야 합니다';
                    }
                    if (value.length > 30) {
                      return '비밀번호는 30자 이하여야 합니다';
                    }
                    if (!RegExp(r'[a-z]').hasMatch(value)) {
                      return '비밀번호에 소문자를 포함해야 합니다';
                    }
                    if (!RegExp(r'[A-Z]').hasMatch(value)) {
                      return '비밀번호에 대문자를 포함해야 합니다';
                    }
                    if (!RegExp(r'[0-9]').hasMatch(value)) {
                      return '비밀번호에 숫자를 포함해야 합니다';
                    }
                    if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(value)) {
                      return '비밀번호에 특수문자를 포함해야 합니다';
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: _confirmPasswordController,
                  label: '비밀번호 확인',
                  obscureText: _obscureConfirmPassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '비밀번호를 다시 입력해주세요';
                    }
                    if (value != _passwordController.text) {
                      return '비밀번호가 일치하지 않습니다';
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirmPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureConfirmPassword = !_obscureConfirmPassword;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 16),
                CheckboxListTile(
                  value: _isTermsAgreed,
                  onChanged: (value) async {
                    if (value == true && !_isTermsAgreed) {
                      final agreed = await context.push<bool>('/terms');
                      if (agreed == true && mounted) {
                        setState(() {
                          _isTermsAgreed = true;
                        });
                      }
                    } else {
                      setState(() {
                        _isTermsAgreed = value ?? false;
                      });
                    }
                  },
                  title: const Text("나만의 서재 서비스 이용약관에 동의합니다"),
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                ),
                const SizedBox(height: 32),
                CustomButton(
                  text: '가입하기',
                  onPressed: _handleRegister,
                  isLoading: isLoading,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
