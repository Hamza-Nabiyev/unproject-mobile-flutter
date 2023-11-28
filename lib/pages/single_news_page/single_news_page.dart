import 'package:flutter/material.dart';
import 'package:news_aggregator/styles/styles.dart';

class SingleNewsPage extends StatelessWidget {
  const SingleNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("Новость"),
            ),
            SliverToBoxAdapter(
              child: Text(
                "aenean patrioque deterruisset lacus purus congue consectetur  aenean patrioque deterruisset lacus purus congue consectetur  aenean patriaenean patrioque deterruisset lacus purus congue consectetur  v aenean patrioque deterruisset lacus purus congue consectetur  aenean patrioque deterruisset lacus purus congue consectetur  aenean patrioque deterruisset lacus purus congue consectetur  aenean patrioque deterruisset lacus purus congue consectetur  aenean patrioque deterruisset lacus purus congue consectetur  aenean patrioque deterruisset lacus purus congue consectetur oque deterruisset lacus purus congue consectetur aenean patrioque deterruisset lacus purus congue consectetur omittantur etiam luctus torquent recteque atomorum indoctum splendide mus menandri quidam semper errem similique velit fastidii purus quo mnesarchum ornare tacimates dolor usu voluptaria tritani saepe volumus repudiandae iuvaret option neque penatibus sanctus vivamus iisque veritus posidonium signiferumque convenire libris neque possim facilisi harum neque te novum noster menandri movet laoreet recteque maximus nascetur facilisis meliore lacus maiestatis deserunt expetenda vitae harum contentiones mucius pretium ferri facilisis tale aliquip aliquip eius docendi assueverit urna eruditi interpretaris tritani veri docendi tibique pri patrioque sapien movet gubergren utamur nostrum phasellus fastidii scripta signiferumque justo ferri felis verterem posidonium nulla semper instructior sale ea agam suas felis mentitum antiopam feugiat graecis pri antiopam autem amet felis viverra parturient massa ius reprimique ultricies accumsan delectus mea montes putent periculis inimicus sea solet tellus verear mazim meliore eros tamquam adhuc graeci qui magnis affert nullam persius postea nobis ei molestie utamur error prompta quam tempus maximus luptatum electram delectus delicata class his habitant porro mazim qui regione eius dicam patrioque ante graeco consectetur euismod vix commune ipsum patrioque honestatis novum fastidii prompta pellentesque ocurreret ex salutatus malesuada aliquet labores oporteat pellentesque eros wisi elementum porttitor arcu iisque eruditi",
              textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
