uniform float time;

void main() {
    vec3 col = 0.5 + 0.5 * cos(time + vec3(0, 2, 4));
    gl_FragColor = vec4(col, 1.0);

}
