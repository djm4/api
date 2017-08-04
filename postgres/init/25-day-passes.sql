SET ROLE kansa;

CREATE TABLE daypass_amounts (
    status MembershipStatus PRIMARY KEY,
    day1 integer,
    day2 integer,
    day3 integer,
    day4 integer,
    day5 integer
);
INSERT INTO daypass_amounts VALUES
('Adult',2500,4500,5000,5000,2500),
('Youth',1500,2500,3000,3000,1500),
('Child',1000,1500,2000,2000,1000);

CREATE TABLE daypasses (
    id SERIAL PRIMARY KEY,
    person_id integer REFERENCES people NOT NULL,
    status MembershipStatus NOT NULL,
    day1 bool DEFAULT false,
    day2 bool DEFAULT false,
    day3 bool DEFAULT false,
    day4 bool DEFAULT false,
    day5 bool DEFAULT false
);

CREATE TABLE badge_and_daypass_prints (
    person integer REFERENCES people NOT NULL,
    timestamp timestamptz NOT NULL DEFAULT now(),
    membership MembershipStatus NOT NULL,
    member_number damm_code,
    daypass integer REFERENCES daypasses
);

CREATE FUNCTION daypass_days(d daypasses) RETURNS bool[] AS $$
BEGIN
    IF d.status IS NOT NULL THEN
        RETURN ARRAY[d.day1, d.day2, d.day3, d.day4, d.day5];
    ELSE
        RETURN NULL;
    END IF;
END;
$$ LANGUAGE plpgsql;
