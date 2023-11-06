import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return _BgStack(
      Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 50,
              width: 100,
              child: Image.asset('assets/logo.png'),
            ),
            _NavbarItem("Home"),
            _NavbarItem("Funding Programs"),
            _NavbarItem("Sites"),
            _NavbarItem("Apply"),
            _NavbarItem("My Dashboard"),
            DropdownMenu(
              width: 120,
              inputDecorationTheme: InputDecorationTheme(
                border: InputBorder.none,
              ),
              initialSelection: 0,
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 0, label: "Resources"),
                DropdownMenuEntry(value: 1, label: "Content 1"),
                DropdownMenuEntry(value: 2, label: "Content 2"),
              ],
            ),
            const Flexible(
                child: SizedBox(
              width: 50,
            )),
            const Flexible(fit: FlexFit.loose, child: _NavBarSearch()),
            const Flexible(
                child: SizedBox(
              width: 50,
            )),
            const _TopIconUsernameProfile(
              "TestUser",
              "assets/propic.png",
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarSearch extends StatelessWidget {
  const _NavBarSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1000) {
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

class _NavbarItem extends StatelessWidget {
  final String title;
  const _NavbarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          title,
        ),
      ),
    );
  }
}

class _TopIconUsernameProfile extends StatelessWidget {
  final String imagePath;
  final String username;
  const _TopIconUsernameProfile(this.username, this.imagePath);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 1200) {
      return Container(
        width: 150,
        height: 50,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/propic.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Username'),
            //DropdownMenu(dropdownMenuEntries: dropdownMenuEntries)
          ],
        ),
      );
    } else {
      return Container(
        width: 50,
        height: 50,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/propic.png'),
          ),
        ),
      );
    }
  }
}

class _BgStack extends StatelessWidget {
  final Widget child;
  const _BgStack(this.child);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
            child: FittedBox(
                fit: BoxFit.cover,
                clipBehavior: Clip.hardEdge,
                child: Image.asset('assets/bgmenu.png')),
          ),
        ),
        child,
      ],
    );
  }
}
