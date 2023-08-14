import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:language/home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late String fName;
  late String lName;
  late String email;
  late String password;
  late String phone;
  bool isview = true;
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formstate,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 150,
                  right: 16,
                  left: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 55,
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    label: const Text('Frist Name'),
                                    prefixIcon: const Icon(Icons.person),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF2F3F5),
                                    prefixIconColor: Colors.black,
                                    hintStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onSaved: (newvalue) {
                                    fName = newvalue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return ("Please enter your frist name ");
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.person),
                                    label: const Text('Last Name'),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF2F3F5),
                                    prefixIconColor: Colors.black,
                                    hintStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onSaved: (newvalue) {
                                    lName = newvalue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return ("Please enter your last name");
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        filled: true,
                        fillColor: const Color(0xFFF2F3F5),
                        prefixIconColor: Colors.black,
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // initialCountryCode: 'IN',
                      onSaved: ((newValue) {
                        phone = newValue.toString();
                      }),
                      validator: (value) {
                        if (value == null) {
                          return ("Please enter your phone number");
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        label: const Text('Email Adress'),
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF2F3F5),
                        prefixIconColor: Colors.black,
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onSaved: (newvalue) {
                        email = newvalue!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ("Please enter your email adress");
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: isview,
                      decoration: InputDecoration(
                        label: const Text('Password'),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isview = !isview;
                            });
                          },
                          icon: isview
                              ? const Icon(
                                  Icons.visibility_off,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: Colors.blue,
                                ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF2F3F5),
                        prefixIconColor: Colors.black,
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onSaved: (newvalue) {
                        password = newvalue!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ("Please enter your password");
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            if (formstate.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeSreen(),
                                ),
                              );
                            }
                            return;
                          },
                          color: Colors.blue,
                          minWidth: 150,
                          height: 50,
                          child: const Text(
                            'CREATE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
