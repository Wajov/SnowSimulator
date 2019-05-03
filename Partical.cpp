#include <bits/stdc++.h>
#include <random>

#include <GLM/glm.hpp>
#include <GLM/gtc/matrix_transform.hpp>
#include <GLM/gtc/type_ptr.hpp>

#include "Partical.h"

const int MAX = 1000;
const float Y_BOUND = -5;

Partical::Partical(float t0, bool init) {
    this->t0 = t0;
    x = glm::vec3(randFloat(-5, 5), init ? randFloat(-5, 5) : 5, randFloat(-5, 0));
    v = glm::vec3(0, -1, 0);
    a = glm::vec3(randFloat(-2, 2), randFloat(-2, 2), randFloat(-2, 2));
}

glm::vec3 Partical::getX() {
    return x;
}

bool Partical::exist() {
    return getX().y > Y_BOUND;
}

void Partical::update(float t) {
    x = x + v * (t - t0) + 0.5f * a * (t - t0) * (t - t0);
    v = v + a * (t - t0);
    a = glm::vec3(randFloat(-2, 2), randFloat(-2, 2), randFloat(-2, 2));
    t0 = t;
}

float Partical::randFloat(float left, float right) {
    return rand() % (MAX + 1) / (float) MAX * (right - left) + left;
}
