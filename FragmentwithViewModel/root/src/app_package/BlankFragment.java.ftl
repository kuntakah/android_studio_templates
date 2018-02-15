package ${relativePackage}.ui;

import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import javax.inject.Inject;

import dagger.Module;
import dagger.Provides;
import dagger.android.support.AndroidSupportInjection;
import ${relativePackage}.R;
import ${relativePackage}.databinding.${underscoreToCamelCase(fragmentLayoutName)}Binding;
import ${viewModelPath}.UnkoFragmentViewModel;

@Module
public class ${fragmentName} extends BaseFragment implements ${viewModelName}.Callback {

    @Inject
    ${viewModelName} viewModel;
    private ${underscoreToCamelCase(fragmentLayoutName)}Binding binding;

    public static ${fragmentName} newInstance() {
        ${fragmentName} fragment = new ${fragmentName}();
        Bundle args = new Bundle();
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        AndroidSupportInjection.inject(this);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        binding = DataBindingUtil.inflate(inflater, R.layout.${fragmentLayoutName}, container, false);
        binding.setViewModel(viewModel);
        return binding.getRoot();
    }

    ///////////////////////////////////////////////////////////////////////////
    // Dagger modules
    ///////////////////////////////////////////////////////////////////////////

    @Provides
    static ${viewModelName}.Callback provideCallback(${fragmentName} fragment) {
        return fragment;
    }

}
