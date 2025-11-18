import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class GameCharacter {
  final String id;
  final String name;
  final String role;
  final String description;
  final String story;
  final String imagePath;
  final Color primaryColor;
  final String specialty;
  final String lane;
  final double difficulty;
  final List<String> skills;
  final List<String> skillDescriptions;
  final String releaseDate;
  final int matches;
  final double winRate;
  final String battlePower;
  final bool isNew;

  GameCharacter({
    required this.id,
    required this.name,
    required this.role,
    required this.description,
    required this.story,
    required this.imagePath,
    required this.primaryColor,
    required this.specialty,
    required this.lane,
    required this.difficulty,
    required this.skills,
    required this.skillDescriptions,
    required this.releaseDate,
    this.matches = 0,
    this.winRate = 0.0,
    this.battlePower = "0",
    this.isNew = false,
  });
}

class NewsItem {
  final String id;
  final String title;
  final String shortDescription;
  final String fullContent;
  final String imagePath;
  final String date;
  final String category;
  final Color categoryColor;
  final List<String> tags;
  final bool isFeatured;

  NewsItem({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.fullContent,
    required this.imagePath,
    required this.date,
    required this.category,
    required this.categoryColor,
    this.tags = const [],
    this.isFeatured = false,
  });
}

// PROVIDERS
final featuredCharactersProvider = FutureProvider<List<GameCharacter>>((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  
  return [
    GameCharacter(
      id: '1',
      name: 'LING',
      role: 'Assassin',
      description: 'The Cyan Finch - Wall Running Master',
      story: 'Ling is an agile assassin who can traverse walls and deliver deadly surprise attacks from unexpected angles.',
      imagePath: 'assets/characters/ling.jpg',
      primaryColor: const Color(0xFF00B4D8),
      specialty: 'Chase/Burst',
      lane: 'Jungle',
      difficulty: 4.0,
      skills: ['Cloud Walker', 'Finch Poise', 'Defiant Sword', 'Tempest of Blades'],
      skillDescriptions: [
        'Can walk on walls and gain movement speed',
        'Dashes forward and deals physical damage',
        'Enhanced basic attack with extra damage',
        'Unleashes multiple sword attacks in an area'
      ],
      releaseDate: '2019',
      matches: 890000,
      winRate: 49.5,
      battlePower: "80K",
    ),
    GameCharacter(
      id: '2',
      name: 'LUNOX',
      role: 'Mage',
      description: 'Twilight Goddess - Order & Chaos',
      story: 'Lunox is the Twilight Goddess, a being born from the collision of Order and Chaos, wielding immense magical power.',
      imagePath: 'assets/characters/lunox.jpg',
      primaryColor: const Color(0xFF8A2BE2),
      specialty: 'Burst/Poke',
      lane: 'Middle',
      difficulty: 4.5,
      skills: ['Power of Order', 'Chaos Assault', 'Cosmic Fission', 'Final Star'],
      skillDescriptions: [
        'Switches between Order and Chaos states',
        'Fires energy orbs that deal magic damage',
        'Creates a singularity that pulls enemies',
        'Unleashes ultimate power in a straight line'
      ],
      releaseDate: '2018',
      matches: 1250000,
      winRate: 52.3,
      battlePower: "85K",
    ),
    GameCharacter(
      id: '3',
      name: 'MATHILDA',
      role: 'Support',
      description: 'Witch of the Wasteland - Guiding Wind',
      story: 'Mathilda is a mysterious witch who guides lost souls with her wind magic and protects her allies.',
      imagePath: 'assets/characters/mathilda.jpg',
      primaryColor: const Color(0xFF9D4EDD),
      specialty: 'Guard/Assist',
      lane: 'Roam',
      difficulty: 3.0,
      skills: ['Soul Bloom', 'Guiding Wind', 'Circling Eagle', 'Morph Spell'],
      skillDescriptions: [
        'Deals magic damage to enemies in a circle',
        'Provides shield and movement speed to allies',
        'Flies to target location and damages enemies',
        'Ultimate protection and crowd control ability'
      ],
      releaseDate: '2020',
      matches: 760000,
      winRate: 51.8,
      battlePower: "75K",
    ),
  ];
});

final allCharactersProvider = FutureProvider<List<GameCharacter>>((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  
  return [
    GameCharacter(
      id: '1',
      name: 'LING',
      role: 'Assassin',
      description: 'The Cyan Finch - Wall Running Master',
      story: 'Ling is an agile assassin who can traverse walls and deliver deadly surprise attacks from unexpected angles.',
      imagePath: 'assets/characters/ling.jpg',
      primaryColor: const Color(0xFF00B4D8),
      specialty: 'Chase/Burst',
      lane: 'Jungle',
      difficulty: 4.0,
      skills: ['Cloud Walker', 'Finch Poise', 'Defiant Sword', 'Tempest of Blades'],
      skillDescriptions: [
        'Can walk on walls and gain movement speed',
        'Dashes forward and deals physical damage',
        'Enhanced basic attack with extra damage',
        'Unleashes multiple sword attacks in an area'
      ],
      releaseDate: '2019',
      matches: 890000,
      winRate: 49.5,
      battlePower: "80K",
    ),
    GameCharacter(
      id: '2',
      name: 'LUNOX',
      role: 'Mage',
      description: 'Twilight Goddess - Order & Chaos',
      story: 'Lunox is the Twilight Goddess, a being born from the collision of Order and Chaos, wielding immense magical power.',
      imagePath: 'assets/characters/lunox.jpg',
      primaryColor: const Color(0xFF8A2BE2),
      specialty: 'Burst/Poke',
      lane: 'Middle',
      difficulty: 4.5,
      skills: ['Power of Order', 'Chaos Assault', 'Cosmic Fission', 'Final Star'],
      skillDescriptions: [
        'Switches between Order and Chaos states',
        'Fires energy orbs that deal magic damage',
        'Creates a singularity that pulls enemies',
        'Unleashes ultimate power in a straight line'
      ],
      releaseDate: '2018',
      matches: 1250000,
      winRate: 52.3,
      battlePower: "85K",
    ),
    GameCharacter(
      id: '3',
      name: 'MATHILDA',
      role: 'Support',
      description: 'Witch of the Wasteland - Guiding Wind',
      story: 'Mathilda is a mysterious witch who guides lost souls with her wind magic and protects her allies.',
      imagePath: 'assets/characters/mathilda.jpg',
      primaryColor: const Color(0xFF9D4EDD),
      specialty: 'Guard/Assist',
      lane: 'Roam',
      difficulty: 3.0,
      skills: ['Soul Bloom', 'Guiding Wind', 'Circling Eagle', 'Morph Spell'],
      skillDescriptions: [
        'Deals magic damage to enemies in a circle',
        'Provides shield and movement speed to allies',
        'Flies to target location and damages enemies',
        'Ultimate protection and crowd control ability'
      ],
      releaseDate: '2020',
      matches: 760000,
      winRate: 51.8,
      battlePower: "75K",
    ),
    GameCharacter(
      id: '4',
      name: 'MIYA',
      role: 'Marksman',
      description: 'Moon Elf Archer - Silverwheel Guardian',
      story: 'Miya is the last Moon Elf from the Silverwheel Forest, fighting to protect her homeland with her exceptional archery skills.',
      imagePath: 'assets/characters/miya.jpg',
      primaryColor: const Color(0xFFE91E63),
      specialty: 'Reap/Push',
      lane: 'Gold',
      difficulty: 2.0,
      skills: ['Power of Moon', 'Arrow of Eclipse', 'Rain of Arrows', 'Hidden Moonlight'],
      skillDescriptions: [
        'Temporarily increases attack speed',
        'Fires a powerful arrow that damages enemies',
        'Shoots multiple arrows in a fan-shaped area',
        'Becomes invisible and gains movement speed'
      ],
      releaseDate: '2016',
      matches: 1850000,
      winRate: 51.2,
      battlePower: "74K",
    ),
    GameCharacter(
      id: '5',
      name: 'RAFAELA',
      role: 'Support',
      description: 'Wings of Heaven - Healing Angel',
      story: 'Rafaela is an angel descended from heaven to heal and protect the innocent with her divine powers.',
      imagePath: 'assets/characters/rafaela.jpg',
      primaryColor: const Color(0xFFFF6B6B),
      specialty: 'Heal/Support',
      lane: 'Roam',
      difficulty: 2.0,
      skills: ['Light of Retribution', 'Holy Healing', 'Holy Baptism', 'Divine Intervention'],
      skillDescriptions: [
        'Deals magic damage to nearby enemies',
        'Heals an ally and herself',
        'Slows enemies in a target area',
        'Massive area heal and movement speed boost'
      ],
      releaseDate: '2017',
      matches: 1100000,
      winRate: 52.1,
      battlePower: "72K",
    ),
    GameCharacter(
      id: '6',
      name: 'TIGREAL',
      role: 'Tank',
      description: 'Moniyan Commander - Unbreakable Will',
      story: 'Tigreal is the noble commander of the Moniyan Empire\'s army, known for his unwavering courage and protective nature.',
      imagePath: 'assets/characters/tigreal.jpg',
      primaryColor: const Color(0xFF2196F3),
      specialty: 'Initiate/Guard',
      lane: 'Roam',
      difficulty: 2.5,
      skills: ['Attack Wave', 'Sacred Hammer', 'Implosion', 'Fearless'],
      skillDescriptions: [
        'Creates a shockwave that damages enemies',
        'Charges forward and knocks up enemies',
        'Pulls enemies towards him and stuns them',
        'Reduces damage taken and gains shield'
      ],
      releaseDate: '2016',
      matches: 1670000,
      winRate: 50.5,
      battlePower: "79K",
    ),
    GameCharacter(
      id: '7',
      name: 'ZHASK',
      role: 'Mage',
      description: 'Planet Bane Overlord - Nightmaric Spawn',
      story: 'Zhask is an alien overlord from Planet Bane who commands nightmaric spawns to dominate the battlefield.',
      imagePath: 'assets/characters/zhask.jpg',
      primaryColor: const Color(0xFF9C27B0),
      specialty: 'Push/Poke',
      lane: 'Middle',
      difficulty: 3.5,
      skills: ['Mind Devourer', 'Dominator\'s Descent', 'Spawn Nightmaric', 'Dominator\'s Descent'],
      skillDescriptions: [
        'Deals extra magic damage with basic attacks',
        'Summons a powerful spawn to fight',
        'Commands the spawn to attack enemies',
        'Enhances spawn and increases its power'
      ],
      releaseDate: '2018',
      matches: 890000,
      winRate: 47.9,
      battlePower: "77K",
    ),
    GameCharacter(
      id: '8',
      name: 'ALUCARD',
      role: 'Fighter',
      description: 'Demon Hunter - Vengeance Seeker',
      story: 'Alucard is a demon hunter seeking vengeance for his father\'s death.',
      imagePath: 'assets/characters/alucard.jpg',
      primaryColor: const Color(0xFFFF6B35),
      specialty: 'Charge/Chase',
      lane: 'EXP/Jungle',
      difficulty: 3.0,
      skills: ['Pursuit', 'Groundsplitter', 'Whirlwind', 'Fission Wave'],
      skillDescriptions: [
        'Charges forward',
        'Slams the ground',
        'Spins with sword',
        'Energy wave'
      ],
      releaseDate: '2016',
      matches: 2100000,
      winRate: 49.8,
      battlePower: "76K",
    ),
    GameCharacter(
      id: '9',
      name: 'GUSION',
      role: 'Assassin',
      description: 'Master Assassin - Deadly Daggers',
      story: 'Once a noble from the Cadia Riverlands.',
      imagePath: 'assets/characters/gusion.jpg',
      primaryColor: const Color(0xFF00CED1),
      specialty: 'Burst/Charge',
      lane: 'Middle/Jungle',
      difficulty: 4.0,
      skills: ['Sword Spike', 'Shadowblade Slaughter', 'Incandescence', 'Deathly Blades'],
      skillDescriptions: [
        'Throws daggers',
        'Teleports and retrieves',
        'Enhances attacks',
        'Multiple daggers'
      ],
      releaseDate: '2018',
      matches: 980000,
      winRate: 48.7,
      battlePower: "78K",
    ),
    GameCharacter(
      id: '10',
      name: 'CLAUDE',
      role: 'Marksman',
      description: 'Golden Thief - Dexter Companion',
      story: 'Claude is the leader of the Golden Arm Thieves.',
      imagePath: 'assets/characters/claude.jpg',
      primaryColor: const Color(0xFFFFD700),
      specialty: 'Reap/Charge',
      lane: 'Gold',
      difficulty: 3.5,
      skills: ['Art of Thievery', 'Battle Mirror Image', 'Blazing Duet', 'Art of Thievery'],
      skillDescriptions: [
        'Steals movement speed',
        'Creates a clone',
        'Rapid attacks',
        'Massive damage'
      ],
      releaseDate: '2018',
      matches: 1560000,
      winRate: 50.2,
      battlePower: "82K",
    ),
    GameCharacter(
      id: '11',
      name: 'EUDORA',
      role: 'Mage',
      description: 'Master of Thunder - Azure Cloud',
      story: 'Eudora controls the power of thunder and lightning.',
      imagePath: 'assets/characters/eudora.jpg',
      primaryColor: const Color(0xFFFF5722),
      specialty: 'Burst/Poke',
      lane: 'Middle',
      difficulty: 2.0,
      skills: ['Superconductor', 'Forked Lightning', 'Thunder Strike', 'Thunder\'s Wrath'],
      skillDescriptions: [
        'Enhances skills',
        'Lightning bounces',
        'Stuns enemy',
        'Thunderstorm damage'
      ],
      releaseDate: '2016',
      matches: 1430000,
      winRate: 49.3,
      battlePower: "71K",
    ),
    GameCharacter(
      id: '12',
      name: 'ANGELA',
      role: 'Support',
      description: 'Angel of Love - Pure Heart',
      story: 'Angela is an angel created to spread love and protect the innocent.',
      imagePath: 'assets/characters/angela.jpg',
      primaryColor: const Color(0xFFFF69B4),
      specialty: 'Guard/Support',
      lane: 'Roam',
      difficulty: 2.5,
      skills: ['Love Waves', 'Puppet-on-a-String', 'Heart Guardian', 'Smart Heart'],
      skillDescriptions: [
        'Heals and damages',
        'Slows enemies',
        'Shields ally',
        'Attaches to ally'
      ],
      releaseDate: '2018',
      matches: 1120000,
      winRate: 53.1,
      battlePower: "73K",
      isNew: true,
    ),
    GameCharacter(
      id: '13',
      name: 'ESTES',
      role: 'Support',
      description: 'King of the Moon - Elven King',
      story: 'Estes is the king of the Moon Elves from the Azrya Woodlands.',
      imagePath: 'assets/characters/estes.jpg',
      primaryColor: const Color(0xFF00BFFF),
      specialty: 'Heal/Support',
      lane: 'Roam',
      difficulty: 2.0,
      skills: ['Moonlight Immersion', 'Domain of Moon Goddess', 'Moonlight Arrow', 'Blessing of Moon Goddess'],
      skillDescriptions: [
        'Heals target',
        'Area healing',
        'Slows enemies',
        'Massive area heal'
      ],
      releaseDate: '2017',
      matches: 950000,
      winRate: 51.8,
      battlePower: "70K",
    ),
  ];
});

final newsProvider = FutureProvider<List<NewsItem>>((ref) async {
  await Future.delayed(const Duration(milliseconds: 1500));
  
  return [
    NewsItem(
      id: '1',
      title: 'NEW CHARACTER: ARLOTT RELEASED!',
      shortDescription: 'The new character Arlott has arrived with unique mechanics and abilities.',
      fullContent: '''
The highly anticipated character Arlott has finally arrived! 

Arlott brings unique mechanics and abilities that will change the battlefield dynamics. With his exceptional mobility and crowd control capabilities, he's set to become a favorite among players.

**Key Features:**
- Unique dash and blink abilities
- Powerful crowd control skills
- High burst damage potential
- Excellent for initiating team fights

**Recommended Build:**
- Warrior Boots
- Bloodlust Axe
- Blade of Despair
- Immortality
- Queen's Wings
- Brute Force Breastplate

Master Arlott and dominate your ranked matches today!
''',
      imagePath: 'assets/news/news1.jpg',
      date: 'November 2024',
      category: 'UPDATE',
      categoryColor: const Color(0xFFFF6B35),
      tags: ['New Character', 'Update', 'Gameplay'],
      isFeatured: true,
    ),
    NewsItem(
      id: '2',
      title: 'WORLD CHAMPIONSHIP TOURNAMENT',
      shortDescription: 'Watch the best teams compete in the World Championship for the ultimate prize.',
      fullContent: '''
The World Championship is here! The best teams from around the globe are gathering to compete for the ultimate prize and the title of World Champion.

**Tournament Details:**
- Date: January 15-28, 2024
- Prize Pool: 2,000,000 USD
- Venue: Kuala Lumpur Convention Center
- 16 International Teams

**Top Contenders:**
- Team A (Philippines)
- Team B (Indonesia)
- Team C (Philippines)
- Team D (Russia)

Don't miss the action! Watch live on our official channels.
''',
      imagePath: 'assets/news/news2.jpg',
      date: 'January 2024',
      category: 'ESPORTS',
      categoryColor: const Color(0xFF2196F3),
      tags: ['Esports', 'Tournament', 'Championship'],
      isFeatured: true,
    ),
  ];
});

// STATE PROVIDERS
final searchQueryProvider = StateProvider<String>((ref) => '');
final sortByProvider = StateProvider<String>((ref) => 'Name');

// FAVORITES PROVIDER
final favoritesProvider = StateNotifierProvider<FavoritesNotifier, List<String>>((ref) {
  return FavoritesNotifier();
});

class FavoritesNotifier extends StateNotifier<List<String>> {
  FavoritesNotifier() : super([]);

  void addFavorite(String characterId) {
    if (!state.contains(characterId)) {
      state = [...state, characterId];
    }
  }

  void removeFavorite(String characterId) {
    state = state.where((id) => id != characterId).toList();
  }

  void toggleFavorite(String characterId) {
    if (state.contains(characterId)) {
      removeFavorite(characterId);
    } else {
      addFavorite(characterId);
    }
  }
}

final likedNewsProvider = StateProvider<List<String>>((ref) => []);

// FILTERED CHARACTERS PROVIDER
final filteredCharactersProvider = Provider<List<GameCharacter>>((ref) {
  final searchQuery = ref.watch(searchQueryProvider);
  final sortBy = ref.watch(sortByProvider);
  final favorites = ref.watch(favoritesProvider);
  final allCharacters = ref.watch(allCharactersProvider);
  
  return allCharacters.when(
    data: (characters) {
      List<GameCharacter> filtered = characters;
      
      // Search filter
      if (searchQuery.isNotEmpty) {
        filtered = filtered.where((character) => 
          character.name.toLowerCase().contains(searchQuery.toLowerCase())
        ).toList();
      }
      
      // Sort filter
      switch (sortBy) {
        case 'Name':
          filtered.sort((a, b) => a.name.compareTo(b.name));
          break;
        case 'Win Rate':
          filtered.sort((a, b) => b.winRate.compareTo(a.winRate));
          break;
        case 'Favorite':
          filtered = filtered.where((character) => favorites.contains(character.id)).toList();
          filtered.sort((a, b) => a.name.compareTo(b.name));
          break;
      }
      
      return filtered;
    },
    loading: () => [],
    error: (error, stack) => [],
  );
});

class AnimatedSearchBar extends ConsumerWidget {
  const AnimatedSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchQueryProvider);
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 55,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1E2A3A).withOpacity(0.8),
            const Color(0xFF0A1428).withOpacity(0.9),
        ]),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.orange.withOpacity(0.3), width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.search_rounded, color: Colors.orange, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              onChanged: (value) => ref.read(searchQueryProvider.notifier).state = value,
              decoration: const InputDecoration(
                hintText: 'Search characters...',
                hintStyle: TextStyle(color: Colors.white54, fontSize: 16),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              style: const TextStyle(color: Colors.white, fontSize: 16),
              cursorColor: Colors.orange,
            ),
          ),
          if (searchQuery.isNotEmpty)
            GestureDetector(
              onTap: () => ref.read(searchQueryProvider.notifier).state = '',
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange.withOpacity(0.2),
                ),
                child: const Icon(Icons.close, color: Colors.orange, size: 18),
              ),
            ),
        ],
      ),
    );
  }
}

class SimpleSortDropdown extends ConsumerWidget {
  const SimpleSortDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sortBy = ref.watch(sortByProvider);
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF1E2A3A),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: sortBy,
          icon: const Icon(Icons.arrow_drop_down_rounded, color: Colors.orange),
          dropdownColor: const Color(0xFF1E2A3A),
          style: const TextStyle(color: Colors.white, fontSize: 14),
          onChanged: (value) {
            ref.read(sortByProvider.notifier).state = value!;
          },
          items: ['Name', 'Win Rate', 'Favorite'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                children: [
                  Icon(
                    value == 'Name' ? Icons.sort_by_alpha_rounded :
                    value == 'Win Rate' ? Icons.trending_up_rounded :
                    Icons.favorite_rounded,
                    color: Colors.orange,
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Text(value),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class CharacterCardShimmer extends StatelessWidget {
  const CharacterCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[800],
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[800]!,
        highlightColor: Colors.grey[700]!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CharacterCard extends ConsumerWidget {
  final GameCharacter character;
  final VoidCallback onTap;

  const CharacterCard({
    super.key,
    required this.character,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);
    final isFavorite = favorites.contains(character.id);
    
    return _CharacterCardContent(
      character: character,
      onTap: onTap,
      isFavorite: isFavorite,
      onToggleFavorite: () {
        ref.read(favoritesProvider.notifier).toggleFavorite(character.id);
      },
    );
  }
}

class _CharacterCardContent extends StatefulWidget {
  final GameCharacter character;
  final VoidCallback onTap;
  final bool isFavorite;
  final VoidCallback onToggleFavorite;

  const _CharacterCardContent({
    required this.character,
    required this.onTap,
    required this.isFavorite,
    required this.onToggleFavorite,
  });

  @override
  State<_CharacterCardContent> createState() => _CharacterCardContentState();
}

class _CharacterCardContentState extends State<_CharacterCardContent> 
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _glowAnimation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    
    _glowAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );
    
    _startGlowAnimation();
  }

  void _startGlowAnimation() {
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildDifficultyStars(double difficulty) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < difficulty.floor() ? Icons.star_rounded : Icons.star_border_rounded,
          color: const Color(0xFFFFD700),
          size: 14,
        );
      }),
    );
  }

  IconData _getCharacterIcon(String role) {
    switch (role.toLowerCase()) {
      case 'tank': return Icons.shield_rounded;
      case 'fighter': return Icons.fitness_center_rounded;
      case 'assassin': return Icons.visibility_off_rounded;
      case 'mage': return Icons.auto_awesome_rounded;
      case 'marksman': return Icons.assistant_rounded;
      case 'support': return Icons.favorite_rounded;
      default: return Icons.person_rounded;
    }
  }

  Widget _buildCharacterImage() {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _glowAnimation,
          builder: (context, child) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    widget.character.primaryColor.withOpacity(0.8 + (_glowAnimation.value * 0.2)),
                    widget.character.primaryColor.withOpacity(0.4 + (_glowAnimation.value * 0.2)),
                  ],
                ),
              ),
              child: child,
            );
          },
        ),
        
        Center(
          child: Image.asset(
            widget.character.imagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Icon(
                      _getCharacterIcon(widget.character.role),
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.character.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.transparent,
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),

        if (widget.character.isNew)
          Positioned(
            top: 8,
            left: 8,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.5 + (_glowAnimation.value * 0.3)),
                    blurRadius: 6 + (_glowAnimation.value * 4),
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Text(
                'NEW',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTapDown: (_) => _animationController.forward(),
        onTapUp: (_) {
          _animationController.reverse().then((_) => widget.onTap());
        },
        onTapCancel: () => _animationController.reverse(),
        child: AnimatedScale(
          scale: _isHovered ? 1.05 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    widget.character.primaryColor.withOpacity(0.9),
                    widget.character.primaryColor.withOpacity(0.6),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: widget.character.primaryColor.withOpacity(0.4 + (_glowAnimation.value * 0.2)),
                    blurRadius: 15 + (_glowAnimation.value * 10),
                    offset: const Offset(0, 8),
                  ),
                  if (_isHovered)
                    BoxShadow(
                      color: widget.character.primaryColor.withOpacity(0.6 + (_glowAnimation.value * 0.2)),
                      blurRadius: 25 + (_glowAnimation.value * 10),
                      offset: const Offset(0, 15),
                    ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: _buildCharacterImage(),
                    ),
                    
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.9),
                              Colors.transparent,
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 12,
                      right: 12,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.orange.withOpacity(0.8 + (_glowAnimation.value * 0.2)),
                            width: 1.5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange.withOpacity(0.3 + (_glowAnimation.value * 0.2)),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          widget.character.battlePower,
                          style: TextStyle(
                            color: Colors.orange.withOpacity(0.9 + (_glowAnimation.value * 0.1)),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 12,
                      left: 12,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: (widget.character.winRate >= 50 ? Colors.green : Colors.red)
                                  .withOpacity(0.3 + (_glowAnimation.value * 0.2)),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.trending_up_rounded,
                              color: widget.character.winRate >= 50 ? Colors.green : Colors.red,
                              size: 12,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${widget.character.winRate}%',
                              style: TextStyle(
                                color: widget.character.winRate >= 50 ? Colors.green : Colors.red,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      top: 45,
                      right: 12,
                      child: GestureDetector(
                        onTap: widget.onToggleFavorite,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: widget.isFavorite 
                                  ? Colors.red.withOpacity(0.8 + (_glowAnimation.value * 0.2))
                                  : Colors.grey,
                              width: 2,
                            ),
                            boxShadow: widget.isFavorite ? [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.4 + (_glowAnimation.value * 0.3)),
                                blurRadius: 8 + (_glowAnimation.value * 4),
                                offset: const Offset(0, 2),
                              ),
                            ] : null,
                          ),
                          child: Icon(
                            widget.isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                            color: widget.isFavorite ? Colors.red : Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.95),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.character.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 4,
                                    color: Colors.black,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: widget.character.primaryColor,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: widget.character.primaryColor.withOpacity(0.5 + (_glowAnimation.value * 0.2)),
                                        blurRadius: 6 + (_glowAnimation.value * 4),
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    widget.character.role,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                _buildDifficultyStars(widget.character.difficulty),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    if (_isHovered)
                      Positioned.fill(
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.3 + (_glowAnimation.value * 0.4)),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NewsCard extends ConsumerWidget {
  final NewsItem news;
  final VoidCallback onTap;

  const NewsCard({super.key, required this.news, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likedNews = ref.watch(likedNewsProvider);
    final isLiked = likedNews.contains(news.id);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1E2A3A),
              Color(0xFF0A1428),
          ]),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 160,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Image.asset(
                    news.imagePath,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              news.categoryColor.withOpacity(0.7),
                              news.categoryColor.withOpacity(0.3),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.article_rounded,
                            size: 50,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: news.categoryColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: news.categoryColor.withOpacity(0.5),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      news.category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
                if (news.isFeatured)
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.5),
                            blurRadius: 6,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Text(
                        'FEATURED',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      news.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      news.shortDescription,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 14,
                        height: 1.4,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today_rounded,
                          color: Colors.orange.withOpacity(0.8),
                          size: 14,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          news.date,
                          style: TextStyle(
                            color: Colors.orange.withOpacity(0.8),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            final notifier = ref.read(likedNewsProvider.notifier);
                            if (isLiked) {
                              notifier.state = likedNews.where((id) => id != news.id).toList();
                            } else {
                              notifier.state = [...likedNews, news.id];
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  isLiked ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                                  color: isLiked ? Colors.red : Colors.white,
                                  size: 12,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Like',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.orange.withOpacity(0.3)),
                          ),
                          child: const Text(
                            'READ MORE',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CharacterCarousel extends StatefulWidget {
  final List<GameCharacter> characters;

  const CharacterCarousel({super.key, required this.characters});

  @override
  State<CharacterCarousel> createState() => _CharacterCarouselState();
}

class _CharacterCarouselState extends State<CharacterCarousel> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    Future.delayed(const Duration(seconds: 4), () {
      if (_pageController.hasClients && mounted) {
        int nextPage = _currentPage + 1;
        if (nextPage >= widget.characters.length) {
          nextPage = 0;
        }
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOutCubic,
        );
        _startAutoScroll();
      }
    });
  }

  IconData _getCharacterIcon(String role) {
    switch (role.toLowerCase()) {
      case 'tank': return Icons.shield_rounded;
      case 'fighter': return Icons.fitness_center_rounded;
      case 'assassin': return Icons.visibility_off_rounded;
      case 'mage': return Icons.auto_awesome_rounded;
      case 'marksman': return Icons.assistant_rounded;
      case 'support': return Icons.favorite_rounded;
      default: return Icons.person_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.characters.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              final character = widget.characters[index];
              return AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                margin: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: _currentPage == index ? 0 : 30,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: character.primaryColor.withOpacity(0.4),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          character.imagePath,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    character.primaryColor.withOpacity(0.8),
                                    character.primaryColor.withOpacity(0.4),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.white, width: 3),
                                      ),
                                      child: Icon(
                                        _getCharacterIcon(character.role),
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Text(
                                      character.name,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.transparent,
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                      Positioned(
                        left: 25,
                        bottom: 25,
                        right: 25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              character.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 8,
                                    color: Colors.black,
                                    offset: Offset(2, 2),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              character.description,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                shadows: [
                                  Shadow(
                                    blurRadius: 4,
                                    color: Colors.black,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                                  ),
                                  child: Text(
                                    character.role,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.orange),
                                  ),
                                  child: Text(
                                    '${character.winRate}% WR',
                                    style: const TextStyle(
                                      color: Colors.orange,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 25),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.characters.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: _currentPage == index ? 24 : 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _currentPage == index ? Colors.orange : Colors.white.withOpacity(0.5),
                boxShadow: _currentPage == index ? [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.6),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  )
                ] : null,
              ),
            );
          }),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class NewsDetailScreen extends ConsumerWidget {
  final NewsItem news;

  const NewsDetailScreen({super.key, required this.news});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likedNews = ref.watch(likedNewsProvider);
    final isLiked = likedNews.contains(news.id);

    return Scaffold(
      backgroundColor: const Color(0xFF0A1428),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A1428),
        title: const Text(
          'NEWS DETAIL',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 250,
              child: Image.asset(
                news.imagePath,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          news.categoryColor.withOpacity(0.7),
                          news.categoryColor.withOpacity(0.3),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.article_rounded,
                        size: 80,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  );
                },
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: news.categoryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      news.category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  Text(
                    news.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        color: Colors.orange.withOpacity(0.8),
                        size: 16,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        news.date,
                        style: TextStyle(
                          color: Colors.orange.withOpacity(0.8),
                          fontSize: 14,
                        ),
                      ),
                      const Spacer(),
                      ...news.tags.take(2).map((tag) {
                        return Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white.withOpacity(0.3)),
                          ),
                          child: Text(
                            tag,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 10,
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                  
                  const SizedBox(height: 25),
                  
                  Text(
                    news.fullContent,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            _showShareDialog(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share_rounded, size: 20),
                              SizedBox(width: 8),
                              Text(
                                'SHARE NEWS',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            final notifier = ref.read(likedNewsProvider.notifier);
                            if (isLiked) {
                              notifier.state = likedNews.where((id) => id != news.id).toList();
                            } else {
                              notifier.state = [...likedNews, news.id];
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isLiked ? Colors.red : Colors.white.withOpacity(0.1),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                isLiked ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                isLiked ? 'LIKED' : 'LIKE',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showShareDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1E2A3A),
        title: const Text(
          'Share News',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        content: const Text(
          'News shared successfully!',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'OK',
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final featuredCharacters = ref.watch(featuredCharactersProvider);
    final news = ref.watch(newsProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF0A1428),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xFF0A1428),
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'GAME CHARACTERS GALLERY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 4,
                      color: Colors.black,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF0A1428),
                      Color(0xFF1a3a5f),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Icon(
                        Icons.games_rounded,
                        size: 100,
                        color: Colors.orange.withOpacity(0.3),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              const Color(0xFF0A1428).withOpacity(0.8),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        '🌟 FEATURED CHARACTERS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.orange.withOpacity(0.3)),
                        ),
                        child: const Text(
                          'AUTO-SCROLL',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  featuredCharacters.when(
                    loading: () => SizedBox(
                      height: 320,
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey[800]!,
                        highlightColor: Colors.grey[700]!,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    error: (error, stack) => Container(
                      height: 200,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.red.withOpacity(0.3)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.error_outline_rounded, color: Colors.red, size: 40),
                          const SizedBox(height: 12),
                          const Text(
                            'Failed to load featured characters',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    data: (characters) => CharacterCarousel(characters: characters),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '📰 LATEST NEWS & UPDATES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 25),
                  news.when(
                    loading: () => SizedBox(
                      height: 240,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 300,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[800],
                            ),
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey[800]!,
                              highlightColor: Colors.grey[700]!,
                              child: Container(),
                            ),
                          );
                        },
                      ),
                    ),
                    error: (error, stack) => Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.red.withOpacity(0.3)),
                      ),
                      child: const Column(
                        children: [
                          Icon(Icons.error_outline_rounded, color: Colors.red, size: 40),
                          SizedBox(height: 12),
                          Text(
                            'Failed to load news',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    data: (newsItems) => SizedBox(
                      height: 280,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: newsItems.length,
                        itemBuilder: (context, index) {
                          return NewsCard(
                            news: newsItems[index],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NewsDetailScreen(news: newsItems[index]),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '⚔️ EXPLORE CHARACTERS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFFFD700).withOpacity(0.1),
                          const Color(0xFFFF6B35).withOpacity(0.1),
                      ]),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.orange.withOpacity(0.3)),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discover All Characters',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Browse through all available characters, filter by role, and find your perfect match!',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const CharactersScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFD700),
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 5,
                            shadowColor: Colors.orange.withOpacity(0.5),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'VIEW ALL',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(Icons.arrow_forward_rounded, size: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          const SliverToBoxAdapter(
            child: SizedBox(height: 40),
          ),
        ],
      ),
    );
  }
}

class CharactersScreen extends ConsumerWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredCharacters = ref.watch(filteredCharactersProvider);
    final favorites = ref.watch(favoritesProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF0A1428),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A1428),
        title: const Text(
          '⚔️ ALL CHARACTERS',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          const AnimatedSearchBar(),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                const Text(
                  'Sort by:',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(width: 12),
                const SimpleSortDropdown(),
                const Spacer(),
                Text(
                  '${filteredCharacters.length} Characters',
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                if (ref.watch(sortByProvider) == 'Favorite')
                  Text(
                    '(${favorites.length} favorites)',
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
              ],
            ),
          ),
          
          Expanded(
            child: filteredCharacters.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search_off_rounded, color: Colors.grey, size: 60),
                        SizedBox(height: 16),
                        Text(
                          'No characters found',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Try adjusting your search or filters',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.75,
                      ),
                      physics: const BouncingScrollPhysics(),
                      itemCount: filteredCharacters.length,
                      itemBuilder: (context, index) {
                        final character = filteredCharacters[index];
                        return CharacterCard(
                          character: character,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => CharacterDialog(character: character),
                            );
                          },
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class CharacterDialog extends ConsumerWidget {
  final GameCharacter character;

  const CharacterDialog({super.key, required this.character});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);
    final isFavorite = favorites.contains(character.id);

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(20),
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              character.primaryColor.withOpacity(0.9),
              const Color(0xFF0A1428),
            ],
          ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: character.primaryColor.withOpacity(0.5),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      character.primaryColor.withOpacity(0.8),
                      Colors.transparent,
                    ],
                  ),
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                character.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 6,
                                      color: Colors.black,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                character.description,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.white.withOpacity(0.3)),
                              ),
                              child: Text(
                                character.role,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () {
                                ref.read(favoritesProvider.notifier).toggleFavorite(character.id);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: isFavorite ? Colors.red : Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: isFavorite ? Colors.red : Colors.white.withOpacity(0.3),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                                      color: isFavorite ? Colors.white : Colors.white,
                                      size: 16,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      isFavorite ? 'Favorite' : 'Add Favorite',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white.withOpacity(0.1)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildStatItem('MATCHES', '${(character.matches / 1000000).toStringAsFixed(1)}M', Icons.people_rounded),
                          _buildStatItem('WIN RATE', '${character.winRate}%', Icons.trending_up_rounded),
                          _buildStatItem('POWER', character.battlePower, Icons.bolt_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'SKILLS & ABILITIES',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ...List.generate(character.skills.length, (index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white.withOpacity(0.1)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: character.primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  '${index + 1}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    character.skills[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    character.skillDescriptions[index],
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(25),
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'CLOSE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String title, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Colors.orange, size: 24),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Characters Gallery',
      theme: ThemeData(
        primaryColor: const Color(0xFFFFD700),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFFD700),
          secondary: Color(0xFFFF6B35),
          surface: Color(0xFF0A1428),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}