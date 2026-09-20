import 'package:flutter_test/flutter_test.dart';
import 'package:material_duration_picker/material_duration_picker.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  testWidgets('Duration Picker App', (WidgetTester tester) async {
    const MaterialApp widget = MaterialApp(
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        DefaultMaterialDurationPickerLocalizations.delegate,
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      locale: Locale('en'),
      home: DurationPickerDialog(),
    );
    await tester.pumpWidget(widget);
  });
}
