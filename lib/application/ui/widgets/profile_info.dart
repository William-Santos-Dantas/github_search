import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'social_item.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SocialItem(label: 'Repository', value: '8'),
              SocialItem(label: 'Gists', value: '0'),
              SocialItem(label: 'Followers', value: '1'),
              SocialItem(label: 'Following', value: '0'),
            ],
          ),
          const SizedBox(height: 10),
          AutoSizeText(
            'William Santos Dantas',
            maxLines: 1,
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey[700],
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.location_pin, size: 20, color: Colors.grey[400]),
              const SizedBox(width: 5),
              Text(
                'Recife, Pernambuco',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  wordSpacing: 1,
                  letterSpacing: .5,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          AutoSizeText(
            'Mussum Ipsum, cacilds vidis litro abertis. Não sou faixa preta cumpadi, sou preto inteiris, inteiris.Cevadis im ampola pa arma uma pindureta.Sapien in monti palavris qui num significa nadis i pareci latim.Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              wordSpacing: 1,
              letterSpacing: .5,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
