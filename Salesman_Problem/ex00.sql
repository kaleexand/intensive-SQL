
create table t1 (node1 varchar, node2 varchar, cost int);
insert into t1 VALUES ('A', 'B', 10);
insert into t1 VALUES ('B', 'A', 10);
insert into t1 VALUES ('A', 'D', 20);
insert into t1 VALUES ('D', 'A', 20);
insert into t1 VALUES ('A', 'C', 15);
insert into t1 VALUES ('C', 'A', 15);
insert into t1 VALUES ('B', 'C', 35);
insert into t1 VALUES ('C', 'B', 35);
insert into t1 VALUES ('B', 'D', 25);
insert into t1 VALUES ('D', 'B', 25);
insert into t1 VALUES ('C', 'D', 30);
insert into t1 VALUES ('D', 'C', 30);

with recursive travel (tour, node1, node2, total_cost, num_places) as (
  select 
    node1 as tour, 
	node1, 
	node2, 
	cost,
	1
   from t1
    where node1 = 'A'
  union all
  select 
    concat(travel.tour, ',', t1.node1),
	t1.node1,
    t1.node2,
    t1.cost + travel.total_cost,
	travel.num_places + 1
  from
    t1
	join travel  on t1.node1 = travel.node2
    where position(t1.node1 in travel.tour) = 0
)
					  
select total_cost, concat('{', tour, ',A', '}')  from travel 
where num_places = 4 
	and node2 = 'A'
	and total_cost in (select min(total_cost)  from travel where num_places = 4 and node2 = 'A')
order by total_cost, tour
