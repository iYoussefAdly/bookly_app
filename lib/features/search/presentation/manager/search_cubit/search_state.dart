part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  final List<BookModel> books;

  const SearchSuccess(this.books);

  @override
  List<Object> get props => [books];
}

class SearchFailure extends SearchState {
  final String erroMessage;

  const SearchFailure(this.erroMessage);

  @override
  List<Object> get props => [erroMessage];
}
