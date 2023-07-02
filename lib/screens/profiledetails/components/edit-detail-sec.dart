import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditDetailSection extends StatelessWidget {
  const EditDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: "First Name",
              hintStyle: TextStyle(
                color: Color(0xFF8E8E8E),
                fontSize: 15.spMax,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: "Last Name",
              hintStyle: TextStyle(
                color: Color(0xFF8E8E8E),
                fontSize: 15.spMax,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          DropdownButtonFormField(
              hint: Text("Gender"), items: [], onChanged: (val) {}),
          SizedBox(
            height: 15.h,
          ),
          Container(
            // color: Colors.amber,
            height: 45.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: BorderDirectional(
                    bottom: BorderSide(width: 1, color: Color(0xFF8E8E8E)))),
    
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "DD/MM/YYYY",
                  style: TextStyle(
                    color: Color(0xFF8E8E8E),
                    fontSize: 15.spMax,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xFF8E8E8E),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Phone Number",
              hintStyle: TextStyle(
                color: Color(0xFF8E8E8E),
                fontSize: 15.spMax,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
