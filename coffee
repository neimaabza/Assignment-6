
/**
 * The coffee class extends the abstract class Beverage
 * @author Neima Abza
 * @version 2.0
 */
public class Coffee extends Beverage {
    //declare variables
    private boolean extraShot;
    private boolean extraSyrup;
    private final double EXTRA_SHOT_COST = 0.50;
    private final double EXTRA_SYRUP_COST = 0.50;

    /**
     * constructor for coffee
     * @param regular_coffee String
     * @param small SIZE
     * @param b boolean
     * @param yForSyrup boolean
     */
    public Coffee(String regular_coffee, SIZE small, boolean b, boolean yForSyrup) {
        super(regular_coffee, TYPE.COFFEE, small);
        extraShot = b;
        extraSyrup = yForSyrup;
    }

    /**
     *a toString that display the information of the beverage name,
     * size and extra shot and extra syrup if its applicable
     * @return x
     */
    @Override
    public String toString() {
        String x = getBevName() +", " + getSize();
        if(extraShot)
            x += "Added Extra shot: ";
        if(extraSyrup)
            x += "Added Extra Syrup: ";

        x += calcPrice();
        return x;
    }


    //@Override
    /*public boolean getAddProtien() {
        return false;
    }*/

    /**
     *
     * @return 0
     */
    @Override
    public int getNumOfFruits() {
        return 0;
    }

    /**
     * calculate the price
     * @return theCalcPrice
     */
    @Override
    public double calcPrice() {
        double theCalcPrice;
        theCalcPrice = super.getBasePrice();
        if(super.getSize() == SIZE.MEDIUM)
            theCalcPrice += super.getSizePrice();
        else if(super.getSize() == SIZE.LARGE)
            theCalcPrice += 2 * super.getSizePrice();
        if(extraShot)
            theCalcPrice += EXTRA_SHOT_COST;
        if(extraSyrup)
            theCalcPrice += EXTRA_SYRUP_COST;
        return theCalcPrice;
    }

    /**
     *
     * @param theCoffee Coffee object
     * @return true super.equals(theCoffee) &&
     *                 extraSyrup == theCoffee.getExtraSyrup() &&
     *                 extraShot == theCoffee.getExtraShot()
     */
    public boolean equals(Coffee theCoffee) {
        return super.equals(theCoffee) &&
                extraSyrup == theCoffee.getExtraSyrup() &&
                extraShot == theCoffee.getExtraShot();
    }

    /**
     *
     * @return extraShot
     */
    public boolean getExtraShot() {
        return extraShot;
    }

    /**
     *
     * @param extraShot boolean
     */
    public void setExtraShot(boolean extraShot) {
        this.extraShot = extraShot;
    }

    /**
     *
     * @return extraSyrup
     */
    public boolean getExtraSyrup() {
        return extraSyrup;
    }

    /**
     *
     * @param extraSyrup boolean
     */
    public void setExtraSyrup(boolean extraSyrup) {
        this.extraSyrup = extraSyrup;
    }

    /**
     *
     * @return EXTRA_SHOT_COST
     */
    public double getEXTRA_SHOT_COST() {
        return EXTRA_SHOT_COST;
    }

    /**
     *
     * @return EXTRA_SYRUP_COST
     */
    public double getEXTRA_SYRUP_COST() {
        return EXTRA_SYRUP_COST;
    }
}
