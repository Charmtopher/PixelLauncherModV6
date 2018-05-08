.class Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$3;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-static {p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->access$200(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->access$202(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;I)I

    invoke-virtual {p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->invalidate()V

    return-void
.end method
