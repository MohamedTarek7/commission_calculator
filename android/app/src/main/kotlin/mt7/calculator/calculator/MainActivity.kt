package mt7.calculator.calculator

import android.os.Build
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import androidx.core.view.WindowCompat

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (Build.VERSION.SDK_INT >= 29) {
            WindowCompat.setDecorFitsSystemWindows(window, false)
        }
    }
}
