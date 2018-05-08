.class Lcom/android/launcher3/InvariantDeviceProfile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/InvariantDeviceProfile;

.field final synthetic val$height:F

.field final synthetic val$width:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;FF)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->this$0:Lcom/android/launcher3/InvariantDeviceProfile;

    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$width:F

    iput p3, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$height:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 268
    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile;

    check-cast p2, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->this$0:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$width:F

    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$height:F

    iget v3, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->this$0:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$width:F

    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$height:F

    iget v3, p2, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
