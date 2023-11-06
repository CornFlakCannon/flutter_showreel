# Showreel

I started by following this tutorial:
- [https://docs.flutter.dev/get-started/codelab]

I got a basic understanding of the syntax, 

Then i focused on the task: reproducing the site in this image:
<details>![SitoDaFare](https://github.com/CornFlakCannon/flutter_showreel/assets/137178601/37394a4f-9e31-46a5-8791-bd542041695f)</details>

After 4-6 hours including the tutorial and the vscode setup as well as dependencies, I was able to reproduce a similar page:

<details>![Firsttry](https://github.com/CornFlakCannon/flutter_showreel/assets/137178601/e19161ed-efa1-4f89-b975-298af8f43368)</details>

The code is actually this repo - I hope I remember to update these screenshots aswell.

# TODO LIST:
1. [ ] Create actual empty pages for redirection
2. [ ] Transform the navbar entries to buttons highlighted with underline
3. [ ] Manage different window sizes 
4. [ ] Get to actually decent transitions between different widgets - in cases like (see below)

<details>
![ResizedFirstTry](https://github.com/CornFlakCannon/flutter_showreel/assets/137178601/4db7a5c5-a280-4573-8ef9-cc0845fb5510)
</details>

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
