# Showreel

I started by following this tutorial:
- [https://docs.flutter.dev/get-started/codelab]

Then i focused on the task: reproducing the site in this image:
![SitoDaFare](https://github.com/CornFlakCannon/flutter_showreel/assets/137178601/37394a4f-9e31-46a5-8791-bd542041695f)

After circa 4-6 hours including the tutorial and some youtube resources, I came to the creation of an empty reproduction of the page:

![Firsttry](https://github.com/CornFlakCannon/flutter_showreel/assets/137178601/e19161ed-efa1-4f89-b975-298af8f43368)

# TODO LIST:
1. [ ] Create actual empty pages for redirection
2. [-] Manage different window sizes
(Partially done as you can se here:)
![ResizedFirstTry](https://github.com/CornFlakCannon/flutter_showreel/assets/137178601/4db7a5c5-a280-4573-8ef9-cc0845fb5510)
3. [ ] Get to actually decent transitions between different widgets - in cases like (see below)
<details>
  
```dart
class _NavBarSearch extends StatelessWidget {
//The Actual Search Bar that I put together as a private class of NavBar (my navigation bar at the top)
  const _NavBarSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1000) {
      // Here I know that I can inject a transition with AnimateWidget, for now it's in TODO list
      return IconButton(onPressed: () {}, icon: Icon(Icons.search));
    } else {
      return SearchBar(
        constraints: BoxConstraints(minHeight: 50, maxHeight: 100),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        hintText: "Search...",
      );
    }
  }
}
```

</details>
