#include "UnitTest++/UnitTest++.h"

#include <cstdint>

int main(int32_t argc, char** argv)
{
    static_cast<void>(argc);
    static_cast<void>(argv);
    return UnitTest::RunAllTests();
}

TEST(Sanity)
{
    CHECK_EQUAL(1, 1);
}
