import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_card.dart';
import 'package:belanja/widgets/footer_widget.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Apel Merah',
      price: 25000,
      imageUrl: 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?w=400',
      stock: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Pisang Cavendish',
      price: 15000,
      imageUrl: 'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?w=400',
      stock: 30,
      rating: 4.2,
    ),
    Item(
      name: 'Jeruk Valencia',
      price: 20000,
      imageUrl: 'https://images.unsplash.com/photo-1547514701-42782101795e?w=400',
      stock: 25,
      rating: 4.8,
    ),
    Item(
      name: 'Mangga Harumanis',
      price: 35000,
      imageUrl: 'https://images.unsplash.com/photo-1553279768-865429fa0078?w=400',
      stock: 15,
      rating: 4.7,
    ),
    Item(
      name: 'Anggur Hijau',
      price: 45000,
      imageUrl: 'https://images.unsplash.com/photo-1537640538966-79f369143f8f?w=400',
      stock: 20,
      rating: 4.3,
    ),
    Item(
      name: 'Strawberry',
      price: 55000,
      imageUrl: 'https://images.unsplash.com/photo-1464965911861-746a04b4bca6?w=400',
      stock: 12,
      rating: 4.9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          'Toko Buah Segar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green[600],
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Header Section
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green[600],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Column(
                children: [
                  Text(
                    'Pilih Buah Segar Favorit Anda',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.store, color: Colors.white, size: 20),
                        SizedBox(width: 8),
                        Text(
                          '${items.length} Produk Tersedia',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // GridView Content
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemCard(item: item, index: index);
                },
              ),
            ),
          ),
          
          // Footer
          FooterWidget(),
        ],
      ),
    );
  }
}