#include <assert.h>

#define COFFEE_ASSERT(cond) \
    {\
        assert(cond);\
    }

class CoffeeTest
{
};

class Brewer
{
public:
    Brewer() : _brewed(false) {}
    void brew() { _brewed = true; }
    bool brewed() { return _brewed; }

private:
    bool _brewed;
};

class BrewerTest : public CoffeeTest
{
public:
    bool testBrewing()
    {
        brewer.brew();
        COFFEE_ASSERT(brewer.brewed());
    }

private:
    Brewer brewer;
};

int main()
{
    BrewerTest test;
    test.testBrewing();

    return 0;
}
