import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Recipe {
  String title;
  List<String> steps;

  Recipe({
    required this.title,
    required this.steps,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeList(),
    );
  }
}

class RecipeList extends StatefulWidget {
  @override
  _RecipeListState createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  final List<Recipe> _recipes = [
    Recipe(
      title: 'Pasta Carbonara',
      steps: [
        'Cook pasta according to package instructions.',
        'In a bowl, mix eggs, grated Pecorino Romano cheese, and black pepper.',
        'In a pan, cook pancetta until crispy.',
        'Combine cooked pasta and egg mixture, adding pancetta and more cheese on top.',
        'Toss and serve immediately.',
      ],
    ),
    Recipe(
      title: 'Chicken Alfredo',
      steps: [
        'Cook fettuccine according to package instructions.',
        'In a pan, cook chicken until fully cooked.',
        'In a separate pot, melt butter, add heavy cream, and stir in grated Parmesan cheese.',
        'Season with salt and pepper.',
        'Combine pasta, chicken, and Alfredo sauce. Toss and garnish with parsley.',
      ],
    ),
    Recipe(
      title: 'Vegetable Stir-Fry',
      steps: [
        'Chop broccoli, bell peppers, carrots, and snap peas.',
        'In a wok, heat oil and sauté garlic and ginger.',
        'Add vegetables and stir-fry until tender-crisp.',
        'Mix soy sauce, sesame oil, and a pinch of sugar.',
        'Pour over vegetables and toss. Serve over rice or noodles.',
      ],
    ),
    Recipe(
      title: 'Margherita Pizza',
      steps: [
        'Preheat oven and roll out pizza dough.',
        'Spread tomato sauce on the dough.',
        'Add fresh mozzarella slices and tomato slices.',
        'Bake until crust is golden and cheese is melted.',
        'Garnish with fresh basil leaves before serving.',
      ],
    ),
    Recipe(
      title: 'Grilled Salmon',
      steps: [
        'Preheat grill to medium-high heat.',
        'Season salmon fillets with salt, pepper, and olive oil.',
        'Grill salmon for 4-5 minutes per side or until cooked through.',
        'Serve with lemon wedges and fresh herbs.',
      ],
    ),
    Recipe(
      title: 'Caesar Salad',
      steps: [
        'Wash and chop Romaine lettuce.',
        'In a bowl, mix Caesar dressing, grated Parmesan cheese, and croutons.',
        'Add the lettuce and toss until well coated.',
        'Garnish with additional Parmesan and croutons.',
        'Serve chilled.',
      ],
    ),
    Recipe(
      title: 'Beef Tacos',
      steps: [
        'Season ground beef with taco seasoning.',
        'Cook beef in a skillet until browned.',
        'Warm taco shells in the oven.',
        'Assemble tacos with beef, lettuce, tomatoes, cheese, and sour cream.',
        'Serve with salsa and guacamole.',
      ],
    ),
    Recipe(
      title: 'Vegetarian Buddha Bowl',
      steps: [
        'Cook quinoa according to package instructions.',
        'Roast sweet potatoes, chickpeas, and broccoli in the oven.',
        'Assemble bowls with quinoa, roasted vegetables, avocado, and a drizzle of tahini.',
        'Garnish with sesame seeds and cilantro.',
      ],
    ),
    Recipe(
      title: 'Spaghetti Bolognese',
      steps: [
        'Cook spaghetti according to package instructions.',
        'In a pan, cook ground beef until browned.',
        'Add diced onions, garlic, and tomato sauce. Simmer.',
        'Season with salt, pepper, and Italian herbs.',
        'Serve sauce over cooked spaghetti.',
      ],
    ),
    Recipe(
      title: 'Shrimp Scampi',
      steps: [
        'Cook linguine according to package instructions.',
        'In a skillet, sauté shrimp in olive oil and garlic until pink.',
        'Add white wine, lemon juice, and red pepper flakes.',
        'Toss with cooked linguine and garnish with parsley.',
      ],
    ),
    Recipe(
      title: 'Chicken Caesar Wrap',
      steps: [
        'Grill chicken breasts and slice into strips.',
        'In a bowl, mix chopped Romaine lettuce, Caesar dressing, and Parmesan cheese.',
        'Spread the Caesar mixture on a tortilla.',
        'Add grilled chicken strips and wrap tightly.',
      ],
    ),
    Recipe(
      title: 'Mushroom Risotto',
      steps: [
        'Sauté diced onions and garlic in a pot.',
        'Add Arborio rice and cook until lightly toasted.',
        'Pour in chicken or vegetable broth gradually, stirring constantly.',
        'Add sliced mushrooms and continue cooking until rice is creamy.',
        'Season with salt, pepper, and Parmesan cheese.',
      ],
    ),
    Recipe(
      title: 'Lemon Garlic Butter Shrimp',
      steps: [
        'In a pan, melt butter and add minced garlic.',
        'Sauté shrimp until pink and opaque.',
        'Season with lemon juice, salt, and parsley.',
        'Serve over cooked rice or pasta.',
      ],
    ),
    Recipe(
      title: 'Homemade Chicken Noodle Soup',
      steps: [
        'In a pot, sauté diced carrots, celery, and onions in olive oil.',
        'Add chicken broth, cooked shredded chicken, and egg noodles.',
        'Simmer until noodles are cooked. Season with salt and pepper.',
        'Garnish with fresh parsley before serving.',
      ],
    ),
    Recipe(
      title: 'Caprese Salad',
      steps: [
        'Slice fresh tomatoes and mozzarella cheese.',
        'Arrange on a plate in alternating layers.',
        'Drizzle with balsamic glaze and sprinkle with fresh basil.',
        'Season with salt and pepper. Serve chilled.',
      ],
    ),
    Recipe(
      title: 'Teriyaki Chicken Stir-Fry',
      steps: [
        'Slice chicken into strips and stir-fry in a wok.',
        'Add sliced bell peppers, broccoli, and snap peas.',
        'Pour in teriyaki sauce and cook until vegetables are tender-crisp.',
        'Serve over cooked rice or noodles.',
      ],
    ),
    Recipe(
      title: 'Homemade Pizza',
      steps: [
        'Preheat oven and roll out pizza dough.',
        'Spread tomato sauce on the dough.',
        'Add your favorite toppings such as cheese, pepperoni, and vegetables.',
        'Bake until crust is golden and toppings are bubbly.',
        'Slice and enjoy!',
      ],
    ),
    // 15 more recipes...
  ];

  late List<Recipe> _filteredRecipes;

  @override
  void initState() {
    super.initState();
    _filteredRecipes = List.from(_recipes);
  }

  void _filterRecipes(String query) {
    setState(() {
      _filteredRecipes = _recipes
          .where((recipe) =>
          recipe.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: RecipeSearch(allRecipes: _recipes),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _filteredRecipes.length,
        itemBuilder: (context, index) {
          Recipe recipe = _filteredRecipes[index];
          return ListTile(
            title: Text(recipe.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetails(recipe: recipe),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;

  RecipeDetails({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cooking Steps:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recipe.steps
                  .map((step) => ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(step),
              ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeSearch extends SearchDelegate<Recipe?> {
  final List<Recipe> allRecipes;

  RecipeSearch({required this.allRecipes});

  late List<Recipe?> filteredRecipes;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          filteredRecipes = List.from(allRecipes);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    _filterRecipes(query);
    return _buildSearchResults();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    _filterRecipes(query);
    return _buildSearchResults();
  }

  Widget _buildSearchResults() {
    return ListView.builder(
      itemCount: filteredRecipes.length,
      itemBuilder: (context, index) {
        Recipe? recipe = filteredRecipes[index];
        return ListTile(
          title: Text(recipe!.title),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeDetails(recipe: recipe),
              ),
            );
          },
        );
      },
    );
  }

  void _filterRecipes(String query) {
    filteredRecipes = allRecipes
        .where((recipe) =>
        recipe.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
