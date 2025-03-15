import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  State<Answer2> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Answer2> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _name, _email, _password, _selectedItem, _select = 'narmal';
  bool _isChecked = false;
  bool _isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "คำนวณค่าจัดส่ง",
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'น้ำหนักสินค้า(กก.)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'กรุณากรอกน้ำหนักสินค้า';
                      }
                      return null;
                    },
                    onSaved: (value) => _name = value,
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration:
                        const InputDecoration(labelText: 'เลือกระยะทาง'),
                    value: _selectedItem,
                    items: ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเทศ']
                        .map<DropdownMenuItem<String>>((String item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                    onChanged: (value) {
                      _selectedItem = value;
                    },
                  ),
                  SizedBox(height: 10),
                  Text('บริการเสริม:'),
                  SizedBox(height: 10),
                  CheckboxListTile(
                    title: const Text('แพคกิ้งพิเศษ(+20 บาท)'),
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('ประกันพัสดุ(+50 บาท)'),
                    value: _isChecked1,
                    onChanged: (value) {
                      setState(() {
                        _isChecked1 = value!;
                      });
                    },
                  ),
                  Column(
                    children: [
                      RadioListTile(
                        title: const Text('ปกติ'),
                        value: 'ปกติ',
                        groupValue: _select,
                        onChanged: (value) {
                          setState(() {
                            _select = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('ด่วน'),
                        value: 'ด่วน',
                        groupValue: _select,
                        onChanged: (value) {
                          setState(() {
                            _select = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('ด่วนพิเศษ'),
                        value: 'ด่วนพิเศษ',
                        groupValue: _select,
                        onChanged: (value) {
                          setState(() {
                            _select = value.toString();
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'คำนวณราคา',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
