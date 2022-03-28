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
	and (total_cost in (select min(total_cost)  from travel where num_places = 4 and node2 = 'A') or 
		total_cost in (select max(total_cost)  from travel where num_places = 4 and node2 = 'A'))
order by total_cost, tour