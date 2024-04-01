import 'package:flutter/material.dart';

class PageTermsAndConditions extends StatelessWidget {
  const PageTermsAndConditions({Key? key}) : super(key: key);

  final String conditionAndAttendingText =
      'At enim hic etiam dolore. Dulce amarum, leve asperum, prope longe, '
      'stare movere, quadratum rotundum. At certe gravius. Nullus est '
      'igitur cuiusquam dies natalis. Paulum, cum regem Persem captum '
      'adduceret, eodem flumine invectio                                       '
      'Quare hoc videndum est, possitne '
      'nobis hoc ratio philosophorum dare.Sed finge non solum callidum eum, '
      'qui aliquid improbe faciat, verum etiam praepotentem, ut M.Est autem '
      'officium, quod ita factum est, ut eius facti probabilis ratio reddi '
      'possit.';

  final String termsAndUseText =
      'Ut proverbia non nulla veriora sint quam vestra dogmata. Tamen aberramus '
      'a proposito, et , ne longius, prorsus, inquam, Piso, si ista mala sunt, '
      'placet. Omnes enim iucundum motum, quo sensus hilaretur. Cum id fugiunt, '
      're eadem defendunt, quae Peripatetici, verba. Quibusnam praeteritis ? '
      'Portenta haec esse dicit, quidem hactenus ; Si id dicis, vicimus. Qui '
      'ita affectus, beatum esse numquam probabis ; Igitur neque stultorum '
      'quisquam beatus neque sapientium non beatus.                            '
      '                       Dicam, inquam, et quidem '
      'discendi causa magis, quam quo te aut Epicurum reprehensum velim. Dolor '
      'ergo, id est summum malum, metuetur semper, etiamsi non ader.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions',
          style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Condition & Attending',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              conditionAndAttendingText,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Terms & Use',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              termsAndUseText,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
