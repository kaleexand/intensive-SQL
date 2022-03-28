
## Exercise 00 - Classical TSP

![T00_02](T00_02.png)

Please take a look at the Graph on the left. 
There are 4 cities (A, B, C and D) and arcs between them with cost (or taxination). Actually the cost (A,B) = (B,A).

Please create a table with name nodes by using structure {node1, node2, cost} and fill data based on a picture (remember there are direct and reverse paths between 2 nodes).
Please write one SQL statement that returns all tours (aka paths) with minimal traveling cost if we will start from city A.
Just remember, you need to find the cheapest way of visiting all the cities and returning to your starting point. For example, the tour looks like that A -> B -> C -> D -> A.

The sample of output data you can find below. Please sort data by total_cost and then by tour.

| total_cost | tour |
| ------ | ------ |
| 80 | {A,B,D,C,A} |
| ... | ... |

## Exercise 01 - Opposite TSP


Please add a possibility to see additional rows with the most expensive cost to the SQL from previous exercise. Just take a look at the sample of data below. Please sort data by total_cost and then by tour.

| total_cost | tour |
| ------ | ------ |
| 80 | {A,B,D,C,A} |
| ... | ... |
| 95 | {A,D,C,B,A} |


