import 'package:equatable/equatable.dart';

class BookModel extends Equatable {
	final String? id;
	final String? title;
	final String? author;
	final String? genre;
	final int? yearPublished;
	final bool? checkedOut;
	final bool? isPermanentCollection;
	final DateTime? createdAt;

	const BookModel({
		this.id, 
		this.title, 
		this.author, 
		this.genre, 
		this.yearPublished, 
		this.checkedOut, 
		this.isPermanentCollection, 
		this.createdAt, 
	});

	factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
				id: json['id'] as String?,
				title: json['title'] as String?,
				author: json['author'] as String?,
				genre: json['genre'] as String?,
				yearPublished: json['yearPublished'] as int?,
				checkedOut: json['checkedOut'] as bool?,
				isPermanentCollection: json['isPermanentCollection'] as bool?,
				createdAt: json['createdAt'] == null
						? null
						: DateTime.parse(json['createdAt'] as String),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'title': title,
				'author': author,
				'genre': genre,
				'yearPublished': yearPublished,
				'checkedOut': checkedOut,
				'isPermanentCollection': isPermanentCollection,
				'createdAt': createdAt?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				title,
				author,
				genre,
				yearPublished,
				checkedOut,
				isPermanentCollection,
				createdAt,
		];
	}
}
