import 'package:flutter/material.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmController = TextEditingController();
    bool _isObscure = true;
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Registrate'),
                centerTitle: true,
                backgroundColor: Colors.pink,
                titleTextStyle: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            body: SingleChildScrollView(
                child:Padding(
                    padding:EdgeInsets.all(16.0),
                    child: Center(
                        child:Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                                Image.asset('assets/logo.png',width:200,height:200),
                                Form(
                                    key:_formKey,
                                    child: Column(
                                        children:[
                                            TextFormField(
                                            controller: _emailController,
                                            decoration: InputDecoration(
                                                label: Text('Correo electrónico')
                                            )
                                            ),
                                            SizedBox(
                                                height:16
                                            ),
                                            TextFormField(
                                                controller:_passwordController,
                                                obscureText: _isObscure,
                                                decoration: InputDecoration(
                                                    label: Text('Contraseña'),
                                                )
                                            ),
                                            SizedBox(
                                                height:16
                                            ),  
                                            TextFormField(
                                                controller:_confirmController,
                                                obscureText: _isObscure,
                                                decoration: InputDecoration(
                                                    label: Text('Confirmar Contraseña'),
                                                    suffixIcon: IconButton(
                                                        onPressed: () {
                                                        setState(() {
                                                            _isObscure = !_isObscure;
                                                        });
                                                        },
                                                        icon: Icon(_isObscure
                                                            ? Icons.visibility
                                                            : Icons.visibility_off)
                                                    )
                                                )
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    )
                )
            )
        );
    }
}