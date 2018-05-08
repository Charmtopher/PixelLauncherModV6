.class Lcom/android/launcher3/keyboard/FocusIndicatorHelper$1;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-static {p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->access$000(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->setAlpha(F)V

    return-void
.end method
