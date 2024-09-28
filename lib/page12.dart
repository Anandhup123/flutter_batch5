import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for TextFormFields
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String? _gender;
  bool _isSubmissionConfirmed = false;
  bool _formSubmitted = false;

  // Validator functions
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (value.length < 2) {
      return 'Name must be at least 2 characters long';
    }
    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    final phoneRegex = RegExp(r'^\d{10}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Enter a valid 10-digit phone number';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (!RegExp(r'[0-9]').hasMatch(value) ||
        !RegExp(r'[A-Za-z]').hasMatch(value)) {
      return 'Password must contain letters and numbers';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirm Password is required';
    }
    if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  // Validators for gender and checkbox, called only when form is submitted
  String? validateGender() {
    if (_gender == null && _formSubmitted) {
      return 'Please select a gender';
    }
    return null;
  }

  String? validateSubmissionConfirmed(bool isConfirmed) {
    if (!isConfirmed && _formSubmitted) {
      return 'You must confirm before submission';
    }
    return null;
  }

  void _submitForm() {
    setState(() {
      _formSubmitted = true; // Mark form as submitted to trigger validation
    });

    if (_formKey.currentState!.validate() &&
        _gender != null &&
        _isSubmissionConfirmed) {
      // Perform your actions here
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form Submitted Successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign Up'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.center,
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Colors.indigo,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                ),
                validator: validateName,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
                validator: validateName,
              ),
              SizedBox(height: 20),
              Text('Gender:'),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text('Male'),
                      leading: Radio<String>(
                        value: 'Male',
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Female'),
                      leading: Radio<String>(
                        value: 'Female',
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Others'),
                      leading: Radio<String>(
                        value: 'Others',
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              if (_formSubmitted && validateGender() != null)
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    validateGender()!,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
              TextFormField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: validatePhoneNumber,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: validateEmail,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: validatePassword,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder()),
                obscureText: true,
                validator: validateConfirmPassword,
              ),
              CheckboxListTile(
                title: Text('Confirm Submission'),
                value: _isSubmissionConfirmed,
                onChanged: (value) {
                  setState(() {
                    _isSubmissionConfirmed = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              if (_formSubmitted &&
                  validateSubmissionConfirmed(_isSubmissionConfirmed) != null)
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    validateSubmissionConfirmed(_isSubmissionConfirmed)!,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
