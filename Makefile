run_app:
	python3 app.py & sleep 30

	wget -r http://127.0.0.1:8050/
	wget -r http://127.0.0.1:8050/_dash-layout 
	wget -r http://127.0.0.1:8050/_dash-dependencies

	wget -r http://127.0.0.1:8050/_dash-component-suites/dash/dcc/async-graph.js
	wget -r http://127.0.0.1:8050/_dash-component-suites/dash/dcc/async-highlight.js
	wget -r http://127.0.0.1:8050/_dash-component-suites/dash/dcc/async-markdown.js
	wget -r http://127.0.0.1:8050/_dash-component-suites/dash/dcc/async-datepicker.js

	wget -r http://127.0.0.1:8050/_dash-component-suites/dash/dash_table/async-table.js
	wget -r http://127.0.0.1:8050/_dash-component-suites/dash/dash_table/async-highlight.js

	wget -r http://127.0.0.1:8050/_dash-component-suites/plotly/package_data/plotly.min.js

	mv 127.0.0.1:8050 pages_files
	ls -a pages_files
	ls -a pages_files/assets

	find pages_files -type f -exec sed -i.bak 's|_dash-component-suites|ausiasrt\\/_dash-component-suites|g' {} \;
	find pages_files -type f -exec sed -i.bak 's|_dash-layout|ausiasrt/_dash-layout.json|g' {} \;
	find pages_files -type f -exec sed -i.bak 's|_dash-dependencies|ausiasrt/_dash-dependencies.json|g' {} \;
	find pages_files -type f -exec sed -i.bak 's|_reload-hash|ausiasrt/_reload-hash|g' {} \;
	find pages_files -type f -exec sed -i.bak 's|_dash-update-component|ausiasrt/_dash-update-component|g' {} \;
	find pages_files -type f -exec sed -i.bak 's|assets|ausiasrt/assets|g' {} \;


	ps -C python -o pid= | xargs kill -9
	rm -rf 127.0.0.1:8050/
	rm -rf pages_files/
	
	

	


clean_dirs:
	ls
	
	rm -rf joblib
