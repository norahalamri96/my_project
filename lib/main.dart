import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      initialRoute: '/', // Set the initial route to '/'
      routes: {
        '/': (context) => MorePage(
          image:
          'https://th.bing.com/th/id/OIP.PoBJy8jUgXf8Hmj8OyINVgHaHa?pid=ImgDet&rs=1',
        ),
        '/payment': (context) => PaymentPage(),
        '/order': (context) => OrderPage(),
      },
    ),
  );
}


// More page
class MorePage extends StatelessWidget {
  final String image;

  const MorePage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 215, 215, 1.0),
      appBar: AppBar(
        backgroundColor:Color(0xFF82C6D0),
        centerTitle: true,
        title: Text(
          'المزيد',
          style: TextStyle(
            decoration: TextDecoration.none,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF4EBE5),
        currentIndex: 0, // Set the index of the selected tab here
        onTap: (index) {
          // Handle navigation to other pages here if needed
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Positioned(
                  top: 100,
                  right: 55,
                  child: Icon(
                    Icons.person,
                    size: 48,
                    color: Color(0xFFA29F9F),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' تعديل الملف الشخصي',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Icon(Icons.edit),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 780,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_sharp,
                        size: 25,
                        color: Color(0xFFA29F9F),
                      ),
                      SizedBox(
                        width: 240,
                      ),
                      Text(
                        'الصفحة الرئيسية',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Icon(
                        Icons.home,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 780,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          size: 25,
                          color: Color(0xFFA29F9F),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentPage(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        width: 235,
                      ),
                      Text(
                        'معلومات الدفع',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Icon(
                        Icons.credit_card,
                        size: 25,
                      ),
                    ], ),

                ),
                Container(
                  width: 780,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          size: 25,
                          color: Color(0xFFA29F9F),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OrderPage(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        width: 280,
                      ),
                      Text(
                        'الطلبات',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Icon(
                        Icons.ballot_outlined,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 780,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_sharp,
                        size: 25,
                        color: Color(0xFFA29F9F),
                      ),
                      SizedBox(
                        width: 310,
                      ),
                      Text(
                        'البحث',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 780,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_sharp,
                        size: 25,
                        color: Color(0xFFA29F9F),
                      ),
                      SizedBox(
                        width: 290,
                      ),
                      Text(
                        'الحساب',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Icon(
                        Icons.account_box,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _formKey = GlobalKey<FormState>();
  final _cardNumberController = TextEditingController();
  final _expirationDateController = TextEditingController();
  final _cvvController = TextEditingController();
  final _cardholderNameController = TextEditingController();
  bool isVisaCardSelected = false;
  bool isMasterCardSelected = false;
  int _currentIndex = 0; // To track the selected tab index

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expirationDateController.dispose();
    _cvvController.dispose();
    _cardholderNameController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 215, 215, 1.0),
      appBar: AppBar(
        backgroundColor:Color(0xFF82C6D0),
        centerTitle: true,
        title: Text(
          'معلومات الدفع',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Color(0xFF000000),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF4EBE5),
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            right: 55,
            child: Text(
              'بطاقاتي',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 25,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 15,
            child: Image.network(
              'https://cdn3.iconfinder.com/data/icons/e-commerce-trading/512/credit-512.png',
              width: 30,
              height: 45,
            ),
          ),
          Positioned(
            top: 70,
            left: 3,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isVisaCardSelected = true;
                  isMasterCardSelected = false; // Deselect MasterCard
                });
              },
              child: Container(
                width: 415,
                color: isVisaCardSelected
                    ? Color.fromRGBO(
                    227, 159, 159, 1.0) // Background color when selected
                    : Color.fromRGBO(243, 215, 215, 1.0),
                // Background color when not selected
                child: Row(
                  children: [
                    Image.network(
                      isVisaCardSelected
                          ? 'https://static.wixstatic.com/media/6fae3e_214284a107ea4feeb6a1f9dcacc41afb~mv2.png/v1/fill/w_600,h_600,al_c,q_85,enc_auto/CheckMark-01.png'
                          : 'https://th.bing.com/th/id/R.32929400b4463c05eb5eecc775068783?rik=uQTuPUzTh%2btc1g&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_137194.png&ehk=4%2b0u%2bepAjyWSEiezHaFm3TJRkl4NuVbvo4xMSVEuFdo%3d&risl=&pid=ImgRaw&r=0',
                      width: 45,
                      height: 50,
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      'Visa \n****5645',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: isVisaCardSelected
                            ? Color(0xFFFFFFFF) // Text color when selected
                            : Color(0xFF000000), // Text color when not selected
                      ),
                    ),
                    Image.network(
                      'https://tous-logos.com/wp-content/uploads/2017/04/Visa-logo.png',
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 155,
            right: -8,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isMasterCardSelected = true;
                  isVisaCardSelected = false; // Deselect VisaCard
                });
              },
              child: Container(
                width: 415,
                color: isMasterCardSelected
                    ? Color.fromRGBO(
                    227, 159, 159, 1.0) // Background color when selected
                    : Color.fromRGBO(243, 215, 215, 1.0),
                // Background color when not selected
                child: Row(
                  children: [
                    Image.network(
                      isMasterCardSelected
                          ? 'https://static.wixstatic.com/media/6fae3e_214284a107ea4feeb6a1f9dcacc41afb~mv2.png/v1/fill/w_600,h_600,al_c,q_85,enc_auto/CheckMark-01.png'
                          : 'https://th.bing.com/th/id/R.32929400b4463c05eb5eecc775068783?rik=uQTuPUzTh%2btc1g&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_137194.png&ehk=4%2b0u%2bepAjyWSEiezHaFm3TJRkl4NuVbvo4xMSVEuFdo%3d&risl=&pid=ImgRaw&r=0',
                      width: 45,
                      height: 50,
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Text(
                      'Master Card \n****6356',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: isMasterCardSelected
                            ? Color(0xFFFFFFFF) // Text color when selected
                            : Color(0xFF000000), // Text color when not selected
                      ),
                    ),
                    Image.network(
                      'https://th.bing.com/th/id/OIP.pL0yAs7O-twbB-41n4VngAHaEc?pid=ImgDet&rs=1',
                      width: 70,
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            child: Container(
              width: 780,
              height: 350,
              color: Color.fromRGBO(243, 215, 215, 1.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 200,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 300),
                    child: Row(
                      children: [
                        Text(
                          'اضافة بطاقة جديدة',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Icon(Icons.add_card),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 330, left: 15, right: 15),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      controller: _cardNumberController,
                      decoration: InputDecoration(
                        labelText: 'ادخل رقم البطاقة',
                        border: OutlineInputBorder(),
                        hintText: '1234567891017121',
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'رجاء ادخل رقم البطاقة';
                        }
                        else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return 'رجاء ادخل أرقام فقط';
                        }
                        else if (value.length != 16) {
                          return 'رقم البطاقة يجب أن يتكون من 16 رقمًا';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            controller: _expirationDateController,
                            decoration: InputDecoration(
                              labelText: 'ادخل تاريخ الانتهاء',
                              border: OutlineInputBorder(),
                              hintText: 'YYYY-MM-DD',
                            ),
                            keyboardType: TextInputType.datetime,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'رجاء ادخل تاريخ الانتهاء';
                              }
                              DateTime currentDate = DateTime.now();
                              if (DateTime.parse(value).isBefore(currentDate)) {
                                return ' يجب أن يكون في المستقبل';
                              }

                              return null;
                            },

                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: TextFormField(
                            controller: _cvvController,
                            decoration: InputDecoration(
                              labelText: 'CVV',
                              border: OutlineInputBorder(),
                              hintText: '3ارقام',
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'رجاء ادخل CVV';
                              } else if (value.length != 3) {
                                return 'يجب أن يتكون من 3 رقمًا';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            controller: _cardholderNameController,
                            decoration: InputDecoration(
                              labelText: 'ادخل اسم حامل البطاقة',
                              border: OutlineInputBorder(),
                              hintText: 'Norah Alamri',
                            ),
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'رجاء ادخل اسم حامل البطاقة';
                              }
                              if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                                return 'رجاء ادخل حروف فقط';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () {
                        // Validate and save the form data
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, save the data
                          // You can access form fields using _cardNumberController.text, etc.
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('تم حفظ معلومات الدفع.'),
                            ),
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(227, 159, 159, 1.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'اضف البطاقة',
                            style: TextStyle(
                              fontSize: 25,
                              decoration: TextDecoration.none,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Icon(Icons.add), // Updated this line
                          SizedBox(
                            width: 10, // Added a comma here
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  // Simulated database data
  List<String> currentOrders = [];
  List<String> previousOrders = [];

  @override
  void initState() {
    super.initState();
    // Fetch orders from the database and populate the lists
    fetchOrdersFromDatabase();
  }

  // Simulated function to fetch orders from the database
  void fetchOrdersFromDatabase() {
    // Replace this with actual database retrieval code
    // Here, we are simulating fetching orders from a database
    currentOrders = ["Order 1", "Order 2", "Order 3"];
    previousOrders = ["Order A", "Order B", "Order C"];
  }
  // Variable to track which list to display
  bool showCurrentOrders = true;

  void _onTabTapped(int index) {
    setState(() {
      showCurrentOrders = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 215, 215, 1.0),
      appBar: AppBar(
        backgroundColor: Color(0xFF82C6D0),
        centerTitle: true,
        title: Text(
          'الطلبات',
          style: TextStyle(
            decoration: TextDecoration.none,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF4EBE5),
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
            backgroundColor:Color(0xFF82C6D0),
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Align buttons horizontally
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showCurrentOrders = true;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 205,
                        color: showCurrentOrders
                            ? Color(0xFFE7A2A2)
                            : Color(0xFFE5C0C0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            ' الطلبات الحالية',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showCurrentOrders = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 205,
                        color: showCurrentOrders
                            ? Color(0xFFE5C0C0)
                            : Color(0xFFE7A2A2),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'الطلبات السابقة',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Display the selected list
                showCurrentOrders
                    ? buildOrderList(currentOrders)
                    : buildOrderList(previousOrders),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
// Function to build the order list
Widget buildOrderList(List<String> orders) {
  return Expanded(
    child: ListView.builder(
      itemCount: orders.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(orders[index]),
        );
      },
    ),
  );
}

