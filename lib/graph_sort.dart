//Depth-First Search (DFS):
class Graph {
  Map<String, List<String>> adjacencyList;

  Graph() : adjacencyList = {};

  void addVertex(String vertex) {
    adjacencyList[vertex] = [];
  }

  void addEdge(String vertex1, String vertex2) {
    adjacencyList[vertex1]!.add(vertex2);
    adjacencyList[vertex2]!.add(vertex1);
  }

  List<String> depthFirstSearch(String startVertex) {
    List<String> visited = [];
    _dfs(startVertex, visited);
    return visited;
  }

  void _dfs(String vertex, List<String> visited) {
    visited.add(vertex);

    for (var adjacentVertex in adjacencyList[vertex]!) {
      if (!visited.contains(adjacentVertex)) {
        _dfs(adjacentVertex, visited);
      }
    }
  }
}
