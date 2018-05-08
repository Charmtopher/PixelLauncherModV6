.class Lcom/android/quickstep/views/LauncherRecentsView$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/LauncherRecentsView;)Ljava/lang/Float;
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/android/quickstep/views/LauncherRecentsView;->access$000(Lcom/android/quickstep/views/LauncherRecentsView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/LauncherRecentsView$1;->get(Lcom/android/quickstep/views/LauncherRecentsView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/quickstep/views/LauncherRecentsView;F)V
    .locals 0

    .line 51
    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/LauncherRecentsView;->setTranslationYFactor(F)V

    .line 52
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 47
    check-cast p1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/LauncherRecentsView$1;->setValue(Lcom/android/quickstep/views/LauncherRecentsView;F)V

    return-void
.end method
