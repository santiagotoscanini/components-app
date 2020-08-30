import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 100.0;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _crearCheckbox(),
              _crearSwitch(),
              Expanded(child: _crearImagen()),
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imágen',
      divisions: 20,
      value: _value,
      min: 10.0,
      max: 400.0,
      onChanged: _blockCheck ? null : (valor) {
        setState(() {
          _value = valor;
        });
      },
    );
  }

  Widget _crearCheckbox() {
//    return Checkbox(
//      value: _blockCheck,
//      onChanged: (val) => setState(() => _blockCheck = val),
//    );

    return CheckboxListTile(
      title: Text('Block'),
      value: _blockCheck,
      onChanged: (val) => setState(() => _blockCheck = val),
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Block'),
      value: _blockCheck,
      onChanged: (val) => setState(() => _blockCheck = val),
    );
  }

  Widget _crearImagen() {
    return Image(
        image: NetworkImage(
            'https://images.unsplash.com/photo-1570727624862-3008fe67a6be?ixlib=rb-1.2.1&w=1000&q=80'),
        width: _value,
        fit: BoxFit.contain);
  }
}
