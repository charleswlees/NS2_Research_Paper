#fairness.awk

BEGIN{

}
{
time=$1
flow1=$2
flow2=$3

fairness = flow1-flow2;
fairness<0? fairness = (fairness*-1) : fairness = fairness;

print time, fairness

}

END{
;
}
