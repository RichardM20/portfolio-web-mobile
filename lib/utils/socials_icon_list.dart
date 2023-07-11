import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors_app.dart';

//acciones de los iconos sociales
//eliminar o agregar segun el gusto
List socialsIcons = [
  {
    'icon': 'download-icon.svg',
    'isHover': false.obs,
    'text': "Download CV",
    'color': primaryColor,
    'url': ""
  },
  {
    'icon': 'github-icon.svg',
    'isHover': false.obs,
    'text': "View to Github",
    'color': Colors.black,
    'url': 'https://github.com/RichardM20'
  },
  {
    'icon': 'linkedin-icon.svg',
    'isHover': false.obs,
    'text': "View to Linkedin",
    'color': const Color(0xFF0077B5),
    'url': 'https://www.linkedin.com/in/rickdeveloper'
  },
  {
    'icon': 'instagram-icon.svg',
    'isHover': false.obs,
    'text': "Contact for Instagram",
    'color': const Color(0xFFE1306C),
    'url': 'https://instagram.com/rickxdev?igshid=NGExMmI2YTkyZg=='
  },
  {
    'icon': 'whatsapp-icon.svg',
    'isHover': false.obs,
    'text': "Contact for Whatsapp",
    'color': const Color(0xFF25D366),
    'url': 'https://api.whatsapp.com/send?phone=573022470728'
  },
];
