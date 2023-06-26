import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animations/animations.dart';

void main() {
  runApp(SchoolManagementApp());
}

class SchoolManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here
                String username = _usernameController.text;
                String password = _passwordController.text;

                // For simplicity, just print the entered credentials
                print('Username: $username');
                print('Password: $password');

                // Check if login is successful (dummy check)
                if (username == 'admin' && password == 'password') {
                  // Navigate to the dashboard page with user information
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DashboardPage(username: username)),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Login Failed'),
                        content: Text(
                            'Invalid username or password. Please try again.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navigate to the registration page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  final String username;

  DashboardPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome, $username!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Text('Your Information:'),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Name: John Doe'),
              subtitle: Text('Email: john.doe@example.com'),
            ),
            SizedBox(height: 16.0),
            Text('Courses:'),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Mathematics'),
              subtitle: Text('Department: Mathematics'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Physics'),
              subtitle: Text('Department: Physics'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('English'),
              subtitle: Text('Department: Language Arts'),
            ),
            SizedBox(height: 16.0),
            Text('Departments:'),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Mathematics'),
              subtitle: Text('Head of Department: Prof. Smith'),
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Physics'),
              subtitle: Text('Head of Department: Prof. Johnson'),
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Language Arts'),
              subtitle: Text('Head of Department: Prof. Thompson'),
            ),
            SizedBox(height: 16.0),
            Text('Lectures:'),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Prof. Smith'),
              subtitle: Text('Department: Mathematics'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Prof. Johnson'),
              subtitle: Text('Department: Physics'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Prof. Thompson'),
              subtitle: Text('Department: Language Arts'),
            ),
          ],
        ),
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _sexController = TextEditingController();
  final TextEditingController _departmentController = TextEditingController();
  final TextEditingController _idNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _sexController,
                  decoration: InputDecoration(
                    labelText: 'Sex',
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _departmentController,
                  decoration: InputDecoration(
                    labelText: 'Department',
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _idNumberController,
                  decoration: InputDecoration(
                    labelText: 'ID Number',
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Perform registration logic here
                    String firstName = _firstNameController.text;
                    String lastName = _lastNameController.text;
                    String email = _emailController.text;
                    String sex = _sexController.text;
                    String department = _departmentController.text;
                    String idNumber = _idNumberController.text;

                    // For simplicity, just print the entered details
                    print('First Name: $firstName');
                    print('Last Name: $lastName');
                    print('Email: $email');
                    print('Sex: $sex');
                    print('Department: $department');
                    print('ID Number: $idNumber');

                    // Show a dialog to inform registration success
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Registration Successful'),
                          content: Text('Your registration details: \n'
                              'First Name: $firstName\n'
                              'Last Name: $lastName\n'
                              'Email: $email\n'
                              'Sex: $sex\n'
                              'Department: $department\n'
                              'ID Number: $idNumber'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
