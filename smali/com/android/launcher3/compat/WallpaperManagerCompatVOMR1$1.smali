.class Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;

.field final synthetic val$listener:Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;->this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;

    iput-object p2, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;->val$listener:Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;->val$listener:Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;

    iget-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;->this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;

    invoke-static {v1, p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->access$000(Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;Landroid/app/WallpaperColors;)Lcom/android/launcher3/compat/WallpaperColorsCompat;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;->onColorsChanged(Lcom/android/launcher3/compat/WallpaperColorsCompat;I)V

    .line 60
    return-void
.end method
