import 'package:flutter/material.dart';
import 'package:flutter_pocket_dropdown/flutter_pocket_dropdown.dart';

class PocketDropdown extends StatefulWidget {
  const PocketDropdown({super.key});

  @override
  State<PocketDropdown> createState() => _PocketDropdownState();
}

class _PocketDropdownState extends State<PocketDropdown> {
  String selectedValue = '';

  void onChanged(String value) {
    setState(() {
      selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pocket Dropdown Search'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PocketDropdownSearch<String>(
            isSearch: false,
            id: 'language_dropdown',
            compareFn: (String a,String b) => a == b,
            selectedItem: selectedValue,
            items: ['flutter','react native','kmp'],
            onChanged:(value,_){
              onChanged(value);
            },
            searchDecoration: InputDecoration(
              labelText: 'Search',
              contentPadding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              suffixIcon: const Icon(Icons.search),
            ),
            itemBuilder: (BuildContext context,String language,bool isSelected) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
                margin: const EdgeInsets.symmetric(vertical: 2,horizontal: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: isSelected ? Theme.of(context).colorScheme.secondaryContainer : Theme.of(context).colorScheme.background,
                ),
                child: Text(language,style: TextStyle( color: Theme.of(context).colorScheme.onBackground),),
              );
            },
            child: Container(
                padding: const EdgeInsets.only(left: 5,right: 1,top: 6,bottom: 6),
                decoration: BoxDecoration(
                    border: Border.all(color:Theme.of(context).colorScheme.outlineVariant),
                    borderRadius: BorderRadius.circular(5)
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectedValue == ''
                        ? Text('Select',style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),)
                        : Text(selectedValue,style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
                    Icon(Icons.arrow_drop_down,color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),)
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}
