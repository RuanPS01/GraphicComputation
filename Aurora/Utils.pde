import java.utils.random;

class Utils {

    public static PVector[] stratifiedSample(int samples) {
        int size = sqrt(samples);
        PVector[] points = new PVector[samples];

        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {

                points[i*size + j] = PVector.add(uniformRandom2D(), 
                                                 new PVector(i, j)).div(size);
            }
        }

        return points;
    }

    private PVector uniformRandom2D() {
        Random random = new Random();
        return new PVector(random.nextFloat() - 0.5, random.nextFloat() - 0.5, 0);
    }

}
