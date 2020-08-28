import 'package:flutter/material.dart';
import '../common/textstyle.dart';

class RivalsListDialog extends StatelessWidget {
  const RivalsListDialog();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('New Rival', style: TITLE_STYLE),
              SizedBox(height: 16.0),
              Text(
                'Add text and an image',
                textAlign: TextAlign.center,
                style: DESCRIPTION_STYLE,
              ),
              SizedBox(height: 24.0),
              Align(
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close'),
                  ))
            ],
          ))
    ]);
  }
}
