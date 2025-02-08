import 'package:finle/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/abaya.dart';

class AbayaDetailsScreen extends StatefulWidget {
  final Abaya abaya;

  const AbayaDetailsScreen({super.key, required this.abaya});

  @override
  State<AbayaDetailsScreen> createState() => _AbayaDetailsScreenState();
}

class _AbayaDetailsScreenState extends State<AbayaDetailsScreen> {
  String? _selectedSize;
  String? _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: PageView.builder(
                itemCount: widget.abaya.images.length,
                onPageChanged: (index) {
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  return Image.network(
                    widget.abaya.images[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.abaya.name,
                              style: GoogleFonts.cairo(
                                color: Colors.grey[700],
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: ThemeProvider.primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '${widget.abaya.price.toStringAsFixed(2)} LYD',
                              style: GoogleFonts.cairo(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            widget.abaya.rating.toString(),
                            style: GoogleFonts.cairo(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                            ),
                          ),
                          Text(
                            ' (${widget.abaya.reviewsCount} reviews)',
                            style: GoogleFonts.cairo(
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'الوصف',
                        style: GoogleFonts.cairo(
                          color: Colors.grey[700],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.abaya.description,
                        style: GoogleFonts.cairo(
                          color: Colors.grey[700],
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Size',
                        style: GoogleFonts.cairo(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: widget.abaya.sizes.map((size) {
                          return ChoiceChip(
                            shadowColor: Colors.black,
                            selectedShadowColor: Colors.black,
                            elevation: 0.4,
                            backgroundColor: Colors.white,
                            label: Text(size),
                            selected: _selectedSize == size,
                            onSelected: (selected) {
                              setState(() {
                                _selectedSize = selected ? size : null;
                              });
                            },
                            selectedColor: ThemeProvider.primaryColor,
                            labelStyle: GoogleFonts.cairo(
                              color: _selectedSize == size
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Color',
                        style: GoogleFonts.cairo(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: widget.abaya.colors.map((color) {
                          return ChoiceChip(
                            shadowColor: Colors.black,
                            selectedShadowColor: Colors.black,
                            elevation: 0.4,
                            backgroundColor: Colors.white,
                            label: Text(color),
                            selected: _selectedColor == color,
                            onSelected: (selected) {
                              setState(() {
                                _selectedColor = selected ? color : null;
                              });
                            },
                            selectedColor: ThemeProvider.primaryColor,
                            labelStyle: GoogleFonts.cairo(
                              color: _selectedColor == color
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
