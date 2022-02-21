TRUNCATE <schema_name>.<table_name> CASCADE;
-- clear out records --

INSERT INTO <schema_name>.<table_name>(
	<column_name>
)
	SELECT 
	<column_name>,

	CASE WHEN <column_name> IS NULL THEN
	'{}' ELSE
	replace(replace(<column_name>, '[','{'),']','}')::text[] END,
	-- transform text with square brackets [] to {} for text[] type
	
	CASE WHEN column_name IS NULL THEN FALSE ELSE column_name END,
	-- check for null to prevent non-null constraint

	FROM schema_name.table_name;
