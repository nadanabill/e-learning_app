import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helpers/audio_manager.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class Test2VolumeWidget extends StatefulWidget {
  final String subQuestion;

  const Test2VolumeWidget({super.key, required this.subQuestion});

  @override
  State<Test2VolumeWidget> createState() => _Test2VolumeWidgetState();
}

class _Test2VolumeWidgetState extends State<Test2VolumeWidget> {
  final AudioManager _audioManager = AudioManager();

  @override
  void dispose() {
    _audioManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {
              _audioManager.playLocalAudio('audio/test.mp3');
            },
            child: Image.asset(AppImages.volumeButton)),
        horizontalSpace(10),
        Expanded(
          child: Text(
            widget.subQuestion,
            style:
                AppTextStyles.font18Regular.copyWith(color: AppColors.black100),
          ),
        ),
      ],
    );
  }
}
