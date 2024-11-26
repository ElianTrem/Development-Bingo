import 'dart:ui';

import 'package:bingo/themes/theme.dart';
import 'package:flutter/material.dart';

class Recovery extends StatefulWidget {
  const Recovery({super.key});

  @override
  _RecoveryState createState() => _RecoveryState();
}

class _RecoveryState extends State<Recovery>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final isLightMode = brightness == Brightness.light;

    return Scaffold(
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              double imageWidth = MediaQuery.of(context).size.width;
              double imageHeight = MediaQuery.of(context).size.height;

              double firstImageLeft = lerpDouble(
                -imageWidth,
                0,
                _animationController.value,
              )!;
              double secondImageLeft = lerpDouble(
                0,
                imageWidth,
                _animationController.value,
              )!;

              return Stack(
                children: [
                  Positioned(
                    left: firstImageLeft,
                    top: 0,
                    child: Image.network(
                      isLightMode
                          ? 'https://firebasestorage.googleapis.com/v0/b/prueba-49b43.appspot.com/o/7.png?alt=media&token=c9d6d41d-62a5-4eaa-9ad8-6d432db08130'
                          : 'https://firebasestorage.googleapis.com/v0/b/prueba-49b43.appspot.com/o/8.png?alt=media&token=d62f1cae-d957-45f9-9de7-fa46e278935d',
                      fit: BoxFit.cover,
                      width: imageWidth,
                      height: imageHeight,
                    ),
                  ),
                  Positioned(
                    left: secondImageLeft,
                    top: 0,
                    child: Image.network(
                      isLightMode
                          ? 'https://firebasestorage.googleapis.com/v0/b/prueba-49b43.appspot.com/o/7.png?alt=media&token=c9d6d41d-62a5-4eaa-9ad8-6d432db08130'
                          : 'https://firebasestorage.googleapis.com/v0/b/prueba-49b43.appspot.com/o/8.png?alt=media&token=d62f1cae-d957-45f9-9de7-fa46e278935d',
                      fit: BoxFit.cover,
                      width: imageWidth,
                      height: imageHeight,
                    ),
                  ),
                ],
              );
            },
          ),
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
                            Icons.lock_reset,
                            size: 80,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Recuperar contraseña',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 24),
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
                          const SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Recuperación de contraseña lógica aquí
                                  print('Email: ${_emailController.text}');
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                foregroundColor: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? blanco // Color del texto para el modo claro
                                    : moradoPrincipal,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text(
                                'Recuperar contraseña',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
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
