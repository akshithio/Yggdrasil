import 'package:flutter/material.dart';

class SDG4 extends StatefulWidget {
  @override
  SDG4State createState() {
    return SDG4State();
  }
}

class SDG4State extends State<SDG4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 4'),
      ),
      body: Container(child:Text("""SDG 4 is Quality education, SDG 3 focuses on providing every child with quality education. SDG 4 aims for equal and affordable access to all the children around the world.

Unfortunately in some developing countries progress has been tough due to high levels of poverty. Countries in Western Asia and Northern Africa have seen an increase in the number of children out of school.  Children from the poorest households are up to four times more likely to be out of school than those of the richest households. Disparities between rural and urban areas also remain high.

This is why SDG 4 aims on providing the children with all boys and girls with free primary and secondary education before 2030. It also aims to provide equal access to affordable vocational training, to eliminate gender and wealth disparities, and achieve universal access to a quality higher education.
"""),
      ),
    );
  }
}
