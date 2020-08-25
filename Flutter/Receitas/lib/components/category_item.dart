import 'package:flutter/material.dart';
import '../models/category.dart';
import '../utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    // Navegador que usa um push para chamar uma nova tela
    //Navigator.of(context).push(
    // Comando usado para passar o caminho da nova tela como retorno
    // MaterialPageRoute(
    //   builder: (_) {
    //     return CategoriesMealsScreen(category);
    //   },
    // ),
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    //InkWell é usado para armazenar um componente que seja sensível a interação
    return InkWell(
      // onTap usado para que, ao clicar no ítem, sejamos direcionados para uma nova tela
      onTap: () => _selectCategory(context),
      // Comando usado para definir a cor padrão como cor de clique
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
