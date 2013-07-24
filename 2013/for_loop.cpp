#include "sgi_stuff.h"

#include <algorithm>
#include <cassert>
#include <functional>
#include <limits>
#include <utility>


using namespace std;

typedef pair<int, double> measurement;

const size_t size = 3;

measurement table[size] = {
    measurement( 1, 150.0),
    measurement( 2, 151.0),
    measurement(10, 155.0),
};

const measurement no_meas(-1, numeric_limits<double>().quiet_NaN());

namespace bad {
measurement first_after(int day) {
    measurement* found =
        find_if(table,
                table + size,
                compose1(                         // f(g(pair)), where:
                    bind2nd(greater<int>(), day), // f(num)  is "num > day?"
                    select1st<measurement>()));   // g(pair) is "pair.first"

    return found ? *found : no_meas;
}
}

namespace good {
measurement first_after(int day) {
    for (int i = 0; i < size; ++i) {
        if (table[i].first > day) { return table[i]; }
    }

    return no_meas;
}
}

int main() {
    measurement m1 = bad::first_after(2);
    assert(m1.second == 155.0);

    measurement m2 = good::first_after(2);
    assert(m2.second == 155.0);

    return 0;
}
