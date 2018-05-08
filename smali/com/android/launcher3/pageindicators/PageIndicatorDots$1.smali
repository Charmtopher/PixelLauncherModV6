.class Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->access$000(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->access$002(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)F

    invoke-virtual {p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    invoke-virtual {p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidateOutline()V

    return-void
.end method
