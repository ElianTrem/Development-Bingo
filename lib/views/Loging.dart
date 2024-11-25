import 'package:bingo/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(); // Repeat animation indefinitely
  }

  @override
  void dispose() {
    _animationController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final isLightMode = brightness == Brightness.light;

    return Scaffold(
      body: Stack(
        children: [
          // Dynamic animated background with two images for continuous effect
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Stack(
                children: [
                  // First image
                  Positioned(
                    left: -MediaQuery.of(context).size.width +
                        (MediaQuery.of(context).size.width *
                            _animationController.value *
                            2),
                    child: Image.network(
                      isLightMode
                          ? 'https://firebasestorage.googleapis.com/v0/b/prueba-49b43.appspot.com/o/7.png?alt=media&token=c9d6d41d-62a5-4eaa-9ad8-6d432db08130'
                          : 'https://firebasestorage.googleapis.com/v0/b/prueba-49b43.appspot.com/o/8.png?alt=media&token=d62f1cae-d957-45f9-9de7-fa46e278935d',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 2,
                      height: MediaQuery.of(context).size.height,
                    ),
                  ),
                  // Second image (duplicated)
                  Positioned(
                    left: MediaQuery.of(context).size.width +
                        (-MediaQuery.of(context).size.width *
                            _animationController.value *
                            2),
                    child: Image.network(
                      isLightMode
                          ? 'https://firebasestorage.googleapis.com/v0/b/prueba-49b43.appspot.com/o/7.png?alt=media&token=c9d6d41d-62a5-4eaa-9ad8-6d432db08130'
                          : 'https://firebasestorage.googleapis.com/v0/b/prueba-49b43.appspot.com/o/8.png?alt=media&token=d62f1cae-d957-45f9-9de7-fa46e278935d',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 2,
                      height: MediaQuery.of(context).size.height,
                    ),
                  ),
                ],
              );
            },
          ),
          // Rest of the login screen content remains the same
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Card(
                  elevation: 0,
                  color: trasnsparente,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 80,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Bienvenido',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 24),

                          // Email field
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Correo electrónico',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor ingrese su correo';
                              }
                              if (!value.contains('@')) {
                                return 'Por favor ingrese un correo válido';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),

                          // Password field
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Contraseña',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor ingrese su contraseña';
                              }
                              if (value.length < 6) {
                                return 'La contraseña debe tener al menos 6 caracteres';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 24),

                          // Login button
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Login logic here
                                  print('Email: ${_emailController.text}');
                                  print(
                                      'Password: ${_passwordController.text}');
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                foregroundColor: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? blanco // Color del texto para el modo claro
                                    : moradoPrincipal, // Color del texto para el modo oscuro
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text(
                                'Iniciar Sesión',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Forgot password link
                          TextButton(
                            onPressed: () {
                              Get.toNamed('/recovery');
                            },
                            child: Text(
                              '¿Olvidaste tu contraseña?',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed('/register');
                            },
                            child: Text(
                              'Registrate aqui',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
