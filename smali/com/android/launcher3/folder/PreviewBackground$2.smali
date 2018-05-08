.class Lcom/android/launcher3/folder/PreviewBackground$2;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p1, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-static {p1}, Lcom/android/launcher3/folder/PreviewBackground;->access$100(Lcom/android/launcher3/folder/PreviewBackground;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p1, Lcom/android/launcher3/folder/PreviewBackground;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/launcher3/folder/PreviewBackground;->access$102(Lcom/android/launcher3/folder/PreviewBackground;I)I

    invoke-virtual {p1}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method
