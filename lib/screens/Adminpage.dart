import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:admingui/screens/Adminpage.dart';
import 'package:admingui/screens/login.dart';

class AdminPageWidget extends StatefulWidget {
  const AdminPageWidget({Key? key}) : super(key: key);

  @override
  _AdminPageWidgetState createState() => _AdminPageWidgetState();
}

class _AdminPageWidgetState extends State<AdminPageWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF83B15F),
          automaticallyImplyLeading: false,
          title: Text(
            'Admin Page',
            textAlign: TextAlign.start,
            style: GoogleFonts.outfit(
              color: Colors.white,
              fontSize: 22,
              letterSpacing: 0,
            ),
          ),
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSectionTitle('App Content'),
                      _buildSectionTitle('Admin Control'),
                      _buildSectionTitle('Developer Contacts'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: _buildAppContentSection()),
                      SizedBox(width: 16),
                      Expanded(child: _buildAdminControlSection()),
                      SizedBox(width: 16),
                      Expanded(child: _buildDeveloperContactsSection()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFF83B15F),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: GoogleFonts.outfit(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildAppContentSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildContentCard('Al-Quran Kareem'),
        _buildContentCard('Daily Invocations'),
        _buildContentCard('Friday Supplication'),
        _buildContentCard('Islamic Events'),
        _buildContentCard('Ziyarah (Visits)'),
        _buildContentCard('Protection Prayers'),
        _buildContentCard('Biographies and References'),
      ],
    );
  }

  Widget _buildAdminControlSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildContentCard('Update Content'),
        _buildContentCard('View User Bookmark'),
        _buildContentCard('Approve User\'s Post'),
      ],
    );
  }

  Widget _buildDeveloperContactsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildContentCard('Syed Haidar (Lead Developer)'),
        _buildContentCard('Adam Hakimy (Database Administrator)'),
        _buildContentCard('Farid Zakaria (Regulation and legalisation)'),
        _buildContentCard('Ahmad Raziq (Assistant)'),
      ],
    );
  }

  Widget _buildContentCard(String title) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        title: Text(
          title,
          style: GoogleFonts.outfit(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
