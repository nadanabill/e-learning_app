class SettingsModel {
  final String title;
  final Function() onTap;
  bool isSwitch;

  SettingsModel({
    required this.title,
    required this.onTap,
    this.isSwitch = false,
  });
}

List<SettingsModel> otherSettingsList = [
  SettingsModel(
    title: 'Dark Mode',
    onTap: () {},
    isSwitch: true,
  ),
  SettingsModel(
    title: 'Notification',
    onTap: () {},
  ),
  SettingsModel(
    title: 'Text Size',
    onTap: () {},
  ),
  SettingsModel(
    title: 'Sound And Volume',
    onTap: () {},
  ),
  SettingsModel(
    title: 'Privacy Policy',
    onTap: () {},
  ),
  SettingsModel(
    title: 'Terms And Conditions',
    onTap: () {},
  ),
];
List<SettingsModel> settingsLanguageList = [
  SettingsModel(
    title: 'First Language',
    onTap: () {},
  ),
  SettingsModel(
    title: 'Second Language',
    onTap: () {},
  ),
];
