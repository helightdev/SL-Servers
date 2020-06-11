import 'package:slservers/models/comment.dart';
import 'package:slservers/models/instance.dart';

class Server {
    bool autogenerated;
    String banner;
    List<Comment> comments;
    String created;
    String description;
    String discord;
    String icon;
    String id;
    List<String> instances;
    List<String> languages;
    String mail;
    String name;
    String owner;
    String preview;
    bool promoted;
    List<String> rules;
    List<String> tags;
    bool visible;
    int votecount;
    List<String> votes;
    String website;

    List<ServerInstance> instanceRefs;

    Server({this.autogenerated, this.banner, this.comments, this.created, this.description, this.discord, this.icon, this.id, this.instances, this.languages, this.mail, this.name, this.owner, this.preview, this.promoted, this.rules, this.tags, this.visible, this.votecount, this.votes, this.website});

    factory Server.fromJson(Map<String, dynamic> json) {
        return Server(
            autogenerated: json['autogenerated'], 
            banner: json['banner'], 
            comments: json['comments'] != null ? (json['comments'] as List).map((i) => Comment.fromJson(i)).toList() : null, 
            created: json['created'], 
            description: json['description'], 
            discord: json['discord'], 
            icon: json['icon'], 
            id: json['id'], 
            instances: json['instances'] != null ? new List<String>.from(json['instances']) : null, 
            languages: json['languages'] != null ? new List<String>.from(json['languages']) : null, 
            mail: json['mail'], 
            name: json['name'], 
            owner: json['owner'], 
            preview: json['preview'], 
            promoted: json['promoted'], 
            rules: json['rules'] != null ? new List<String>.from(json['rules']) : null, 
            tags: json['tags'] != null ? new List<String>.from(json['tags']) : null, 
            visible: json['visible'], 
            votecount: json['votecount'], 
            votes: json['votes'] != null ? new List<String>.from(json['votes']) : null, 
            website: json['website'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['autogenerated'] = this.autogenerated;
        data['banner'] = this.banner;
        data['created'] = this.created;
        data['description'] = this.description;
        data['discord'] = this.discord;
        data['icon'] = this.icon;
        data['id'] = this.id;
        data['mail'] = this.mail;
        data['name'] = this.name;
        data['owner'] = this.owner;
        data['preview'] = this.preview;
        data['promoted'] = this.promoted;
        data['visible'] = this.visible;
        data['votecount'] = this.votecount;
        data['website'] = this.website;
        if (this.comments != null) {
            data['comments'] = this.comments.map((v) => v.toJson()).toList();
        }
        if (this.instances != null) {
            data['instances'] = this.instances;
        }
        if (this.languages != null) {
            data['languages'] = this.languages;
        }
        if (this.rules != null) {
            data['rules'] = this.rules;
        }
        if (this.tags != null) {
            data['tags'] = this.tags;
        }
        if (this.votes != null) {
            data['votes'] = this.votes;
        }
        return data;
    }
}