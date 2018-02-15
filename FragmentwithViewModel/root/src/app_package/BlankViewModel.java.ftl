package ${packageName}.viewmodel;

import javax.inject.Inject;

/**
 *
 */

public class ${viewModelName} implements IViewModel {

    private final Callback callback;


    public interface Callback {
    }

    @Inject
    ${viewModelName}(Callback callback) {
        this.callback = callback;
    }

    @Override
    public void onDestroy() {
    }

}
