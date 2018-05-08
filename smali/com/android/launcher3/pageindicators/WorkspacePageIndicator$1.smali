.class Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-static {p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->access$000(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 64
    check-cast p1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->access$000(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->invalidate()V

    return-void
.end method
